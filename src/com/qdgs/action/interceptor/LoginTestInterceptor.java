package com.qdgs.action.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginTestInterceptor extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		//����ActionContextʵ��
		ActionContext ctx = ActionContext.getContext();
		String name=(String)ctx.getSession().get("name");
		//��ȡHttpSession�е�level����
		return null;
	}

}
