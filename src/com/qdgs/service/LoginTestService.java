package com.qdgs.service;

import com.qdgs.bean.LoginTest;

public interface LoginTestService {
boolean isValidLogin(String name,String pass);
boolean regist(LoginTest loginTest);
int getMaxId();
}
