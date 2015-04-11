package com.qdgs.action.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.*;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthorizationInterceptor extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		Map session = invocation.getInvocationContext().getSession();
		String userName=(String)session.get("userName");
		if(userName!=null && !(userName.equals(""))){
			return invocation.invoke();
		}
		else{
			return Action.LOGIN;
		}
	}

}
