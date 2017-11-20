package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Book;
import com.entity.Category;

/**
 * @author chx
 */
public interface BookService {
	
	/**
	 * 保存书籍信息
	 * @param book
	 * @return
	 */
	int saveBook(Book book);
	
	/**
	 * 根据ID删除书籍信息
	 * @param id
	 * @return
	 */
	int deleteById(int id);
	 
	/**
	 * 分页查询
	 * Map分装：当前页page,每页显示多少条pageSize
	 * @param map
	 * @return
	 */
	List<Book> queryByPage(Map<String, Integer> map);
	
	/**
	 * 查询该表总记录数，为了确定尾页
	 * @return
	 */
	int count();
	
	/**
	 * 查询所有种类
	 * @return
	 */
	List<Category> queryCategory();
}
