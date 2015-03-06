package com.qdgs.service;

import com.qdgs.bean.UserInfo;

public interface UserInfoService {
boolean regist(UserInfo userInfo);
boolean isValidLogin(UserInfo userInfo);
}
