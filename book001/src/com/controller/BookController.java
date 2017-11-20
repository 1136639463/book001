package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Book;
import com.entity.Category;
import com.service.BookService;

/**
 * @author chx
 */
@Controller
public class BookController {
	
	@Autowired
	private BookService bookService;
	
	@RequestMapping("save")
	public String saveBook(Book book,Model model){
		int rs = bookService.saveBook(book);
		System.out.println("----------------------->mysql中插入"+rs+"行");
		return queryByPage(1, model);
	}
	
	@RequestMapping("delete/{id}")
	public String deleteById(@PathVariable int id,Model model){
		int rs = bookService.deleteById(id);
		System.out.println("----------------------->mysql中插入"+rs+"行");
		return queryByPage(1, model);
	}
	
	@RequestMapping("query/{page}")
	public String queryByPage(@PathVariable int page,Model model){
		// 定义每页显示多少条数据
		int pageSize=10;
		//查询总记录数
		int count=bookService.count();
		//确定尾页
		int lastPage=count%pageSize==0?count/pageSize:count/pageSize+1;
		
		//查询分页数据，准备参数
		Map<String,Integer> map=new HashMap<String,Integer>();
		map.put("page", page);
		map.put("pageSize", pageSize);
		//查询
		List<Book> books = bookService.queryByPage(map);
		//封装数据，返回给页面
		model.addAttribute("lastPage",lastPage);
		model.addAttribute("page",page);
		model.addAttribute("books",books);
		return "show";
	}
	
	/**
	 * 查询种类数据返回返回保存页面
	 * @param model
	 * @return
	 */
	@RequestMapping("init")
	public String init(Model model){
		List<Category> categorys = bookService.queryCategory();
		model.addAttribute("categorys",categorys);
		return "save";
	}
}
