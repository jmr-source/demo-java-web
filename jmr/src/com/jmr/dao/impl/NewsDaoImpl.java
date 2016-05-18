
package com.jmr.dao.impl;
import java.util.Map;
import ssh.hibernate.dao.IBaseDao;
import ssh.hibernate.dao.QuerySqlManager;
import ssh.hibernate.page.ListPage;
import com.jmr.dao.INewsDao;
import com.jmr.entity.News;

/**
 * 消息Dao实现类
 *
 */

public class NewsDaoImpl implements INewsDao{
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
		return QuerySqlManager.query(baseDao, News.class, pageNo, pageCount, queryMap);
	}
	
	/**
	 * 取得单一对象
	 * @param id
	 * @return
	 */
	public News getById(Integer id) {
		return (News)baseDao.get(News.class, id);
	}
		
	/**
	 * 删除
	 * @param id
	 */
	public void delete(Integer id) {
		baseDao.delete(News.class, id);
	}
	
	/**
	 * 保存
	 * @param news
	 */
	public void save(Object object) {
		baseDao.save(object);
	}
	
	/**
	 * 修改
	 * @param news
	 */
	public void update(Object object) {
		baseDao.update(object);
	}

}
