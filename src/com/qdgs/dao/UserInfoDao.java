package com.qdgs.dao;

import java.util.List;

import com.qdgs.bean.UserInfo;



public interface UserInfoDao {
	Integer save(UserInfo userInfo);
    void delete(Integer id);
    void delete(UserInfo userInfo);
    void update(UserInfo userInfo);
    List<UserInfo> getPassByUserNameAndUserPwd(UserInfo userInfo);
}
