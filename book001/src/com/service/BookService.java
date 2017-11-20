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
	 * �����鼮��Ϣ
	 * @param book
	 * @return
	 */
	int saveBook(Book book);
	
	/**
	 * ����IDɾ���鼮��Ϣ
	 * @param id
	 * @return
	 */
	int deleteById(int id);
	 
	/**
	 * ��ҳ��ѯ
	 * Map��װ����ǰҳpage,ÿҳ��ʾ������pageSize
	 * @param map
	 * @return
	 */
	List<Book> queryByPage(Map<String, Integer> map);
	
	/**
	 * ��ѯ�ñ��ܼ�¼����Ϊ��ȷ��βҳ
	 * @return
	 */
	int count();
	
	/**
	 * ��ѯ��������
	 * @return
	 */
	List<Category> queryCategory();
}
