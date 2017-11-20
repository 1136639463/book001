package com.service.impl;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BookDao;
import com.entity.Book;
import com.entity.Category;
import com.service.BookService;

/**
 * @author chx
 */
@Service("bookService")
public class BookServiceImpl implements BookService {

	@Autowired
	private BookDao bookDao;
	
	@Override
	public int saveBook(Book book) {
		// TODO Auto-generated method stub
		return bookDao.saveBook(book);
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return bookDao.deleteById(id);
	}
	
	@Override
	public List<Book> queryByPage(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		Integer page = map.get("page");
		Integer pageSize=map.get("pageSize");
		Integer from=(page-1)*pageSize;
		
		map.put("from", from);
		
		return bookDao.queryByPage(map);
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return bookDao.count();
	}

	@Override
	public List<Category> queryCategory() {
		// TODO Auto-generated method stub
		return bookDao.queryCategory();
	}


}
