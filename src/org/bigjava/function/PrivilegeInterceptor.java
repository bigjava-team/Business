package org.bigjava.function;

import org.apache.struts2.ServletActionContext;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class PrivilegeInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {

		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("loginUser");
		
		if(user != null){
			// �Ѿ���¼��
			return actionInvocation.invoke();
		}else{
			// ��ת����¼ҳ��:
			ActionSupport support = (ActionSupport) actionInvocation.getAction();
			support.addActionError("����û�е�¼!û��Ȩ�޷���!");
			return ActionSupport.LOGIN;
		}
	
	}

}
