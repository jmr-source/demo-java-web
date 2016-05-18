package com.jmr.dao.impl;
import java.util.Map;
import ssh.hibernate.dao.IBaseDao;
import ssh.hibernate.dao.QuerySqlManager;
import ssh.hibernate.page.ListPage;
import com.jmr.dao.IStudentDao;
import com.jmr.entity.Student;

/**
 * 消息Dao实现类
 *
 */

public class StudentDaoImpl implements IStudentDao{
	
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
	public ListPage find(int pageNo, int pageCount, Map<String, Object> queryMap) {
		return QuerySqlManager.query(baseDao, Student.class, pageNo, pageCount, queryMap);
	}
	
	/**
	 * 取得单一对象
	 * @param id
	 * @return
	 */
	public Student getById(Integer id) {
		return (Student)baseDao.get(Student.class, id);
	}
		
	/**
	 * 删除
	 * @param id
	 */
	public void delete(Integer id) {
		baseDao.delete(Student.class, id);
	}
	
	/**
	 * 保存
	 * @param student
	 */
	public void save(Object object) {
		baseDao.save(object);
	}
	
	/**
	 * 修改
	 * @param student
	 */
	public void update(Object object) {
		baseDao.update(object);
	}

}

