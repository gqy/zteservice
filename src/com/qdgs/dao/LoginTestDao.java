package com.qdgs.dao;

import java.util.List;



import com.qdgs.bean.LoginTest;

public interface LoginTestDao {

	LoginTest get(Integer id);

	/**
	 * 持久化指定的CheckBack实例
	 * @param checkBack 需要被持久化的CheckBack实例
	 * @return CheckBack实例被持久化后的标识属性值
	 */
	Integer save(LoginTest loginTest);

	/**
	 * 修改指定的CheckBack实例
	 * @param checkBack 需要被修改的CheckBack实例
	 */
	void update(LoginTest loginTest);

	/**
	 * 删除指定的CheckBack实例
	 * @param checkBack 需要被删除的CheckBack实例
	 */
	void delete(LoginTest loginTest);

	/**
	 * 根据标识属性删除CheckBack实例
	 * @param id 需要被删除的CheckBack实例的标识属性值
	 */
	void delete(Integer id);

	/**
	 * 查询全部的CheckBack实例
	 * @return 数据库中全部的CheckBack实例
	 */
	List<LoginTest> findAll();
}
