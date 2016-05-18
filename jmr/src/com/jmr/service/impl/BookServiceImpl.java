
package com.jmr.service.impl;

import java.util.Map;

import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;
import ssh.hibernate.page.ListPage;
import com.jmr.dao.IBookDao;
import com.jmr.service.IBookService;

/**
 * 消息Service实现类
 *
 */
 public class BookServiceImpl implements IBookService{
 	private IBookDao bookDao;
	private TransactionTemplate transactionTemplate;
	
	//事務
	public void setTransactionTemplate(TransactionTemplate transactionTemplate) {
		this.transactionTemplate = transactionTemplate;
	}
	
	public IBookDao getBookDao() {
		return bookDao;
	}
	
	public void setBookDao(IBookDao bookDao) {
		this.bookDao = bookDao;
	}
		
	/**
	 * 分页查询
	 * @param pageNo
	 * @param pageCount
	 * @param queryMap
	 * @return
	 */
	public ListPage find(int pageNo, int pageCount, Map queryMap) {
		return bookDao.find(pageNo, pageCount, queryMap);
	}
	
	/**
	 * 取得单一对象
	 * @param id
	 * @return
	 */
	 public Object getById(Integer id) {
		return bookDao.getById(id);
	}
	
	/**
	 * 删除
	 * @param id
	 */
	 public void delete(final Integer id) {
		transactionTemplate.execute(new TransactionCallback() {
			public Object doInTransaction(TransactionStatus ts) {
				bookDao.delete(id);
				return null;
			}
		});
	}
		
	/**
	 * 保存
	 * @param news
	 */
	 public void save(Object object) {
		bookDao.save(object);
	}
	
	/**
	 * 修改
	 * @param news
	 */
	 public void update(Object object) {
		bookDao.update(object);
	}
	
}
 
 