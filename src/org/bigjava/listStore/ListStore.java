package org.bigjava.listStore;

public class ListStore {

	private String content;// ” œ‰ —È÷§¬Î
	private String loginError;
	
	private String loginFreezeError;

	public String getLoginFreezeError() {
		return loginFreezeError;
	}

	public void setLoginFreezeError(String loginFreezeError) {
		this.loginFreezeError = loginFreezeError;
	}

	public String getLoginError() {
		return loginError;
	}

	public void setLoginError(String loginError) {
		this.loginError = loginError;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "ListStore [content=" + content + "]";
	}

}
