package com.qdgs.dao;

import com.qdgs.bean.UserInfo;



public interface UserInfoDao {
	Integer save(UserInfo userInfo);
    void delete(Integer id);
    void delete(UserInfo userInfo);
    void update(UserInfo userInfo);
}
