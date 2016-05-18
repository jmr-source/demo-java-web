package com.jmr.dao.impl;
import java.util.Map;
import ssh.hibernate.dao.IBaseDao;
import ssh.hibernate.dao.QuerySqlManager;
import ssh.hibernate.page.ListPage;
import com.jmr.dao.IBookDao;
import com.jmr.entity.Book;

/**
 * 消息Dao实现类
 *
 */

public class BookDaoImpl implements IBookDao{
	
	private IBaseDao baseDao;

	public void setBaseDao(IBaseDao baseDao) {
		this.baseDao = baseDao;
	}
	
	/**
	 * 
	 * @param pageNo 
	 * @param pageCount
	 * @param queryMap 查询的Map 
	 * @return
	 */
	public ListPage find(int pageNo, int pageCount, Map queryMap) {
		return QuerySqlManager.query(baseDao, Book.class, pageNo, pageCount, queryMap);
	}
	
	/**
	 * 取得单一对象
	 * @param id
	 * @return
	 */
	public Book getById(Integer id) {
		return (Book)baseDao.get(Book.class, id);
	}
		
	/**
	 * 删除
	 * @param id
	 */
	public void delete(Integer id) {
		baseDao.delete(Book.class, id);
	}
	
	/**
	 * 保存
	 * @param book
	 */
	public void save(Object object) {
		baseDao.save(object);
	}
	
	/**
	 * 修改
	 * @param book
	 */
	public void update(Object object) {
		baseDao.update(object);
	}

}

