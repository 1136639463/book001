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
		System.out.println("----------------------->mysql�в���"+rs+"��");
		return queryByPage(1, model);
	}
	
	@RequestMapping("delete/{id}")
	public String deleteById(@PathVariable int id,Model model){
		int rs = bookService.deleteById(id);
		System.out.println("----------------------->mysql�в���"+rs+"��");
		return queryByPage(1, model);
	}
	
	@RequestMapping("query/{page}")
	public String queryByPage(@PathVariable int page,Model model){
		// ����ÿҳ��ʾ����������
		int pageSize=10;
		//��ѯ�ܼ�¼��
		int count=bookService.count();
		//ȷ��βҳ
		int lastPage=count%pageSize==0?count/pageSize:count/pageSize+1;
		
		//��ѯ��ҳ���ݣ�׼������
		Map<String,Integer> map=new HashMap<String,Integer>();
		map.put("page", page);
		map.put("pageSize", pageSize);
		//��ѯ
		List<Book> books = bookService.queryByPage(map);
		//��װ���ݣ����ظ�ҳ��
		model.addAttribute("lastPage",lastPage);
		model.addAttribute("page",page);
		model.addAttribute("books",books);
		return "show";
	}
	
	/**
	 * ��ѯ�������ݷ��ط��ر���ҳ��
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
