
package com.jmr.service.impl;

import java.util.Map;

import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;
import ssh.hibernate.page.ListPage;
import com.jmr.dao.IStudentDao;
import com.jmr.service.IStudentService;

/**
 * 消息Service实现类
 *
 */
 public class StudentServiceImpl implements IStudentService{
 	private IStudentDao studentDao;
	private TransactionTemplate transactionTemplate;
	
	//事務
	public void setTransactionTemplate(TransactionTemplate transactionTemplate) {
		this.transactionTemplate = transactionTemplate;
	}
	
	public IStudentDao getStudentDao() {
		return studentDao;
	}
	
	public void setStudentDao(IStudentDao studentDao) {
		this.studentDao = studentDao;
	}
		
	/**
	 * 分页查询
	 * @param pageNo
	 * @param pageCount
	 * @param queryMap
	 * @return
	 */
	public ListPage find(int pageNo, int pageCount, Map<String, Object> queryMap) {
		return studentDao.find(pageNo, pageCount, queryMap);
	}
	
	/**
	 * 取得单一对象
	 * @param id
	 * @return
	 */
	 public Object getById(Integer id) {
		return studentDao.getById(id);
	}
	
	/**
	 * 删除
	 * @param id
	 */
	 public void delete(final Integer id) {
		transactionTemplate.execute(new TransactionCallback() {
			public Object doInTransaction(TransactionStatus ts) {
				studentDao.delete(id);
				return null;
			}
		});
	}
		
	/**
	 * 保存
	 * @param news
	 */
	 public void save(Object object) {
		studentDao.save(object);
	}
	
	/**
	 * 修改
	 * @param news
	 */
	 public void update(Object object) {
		studentDao.update(object);
	}
	
}
 
 