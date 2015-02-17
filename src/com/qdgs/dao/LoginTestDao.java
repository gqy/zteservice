package com.qdgs.dao;

import java.util.List;



import com.qdgs.bean.LoginTest;

public interface LoginTestDao {
   List< LoginTest> getByName(String name);
	LoginTest get(Integer id);
	Integer save(LoginTest loginTest);
	void update(LoginTest loginTest);
	void delete(LoginTest loginTest);
	void delete(Integer id);
	List<LoginTest> findAll();
}
