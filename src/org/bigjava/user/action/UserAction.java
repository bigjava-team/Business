package org.bigjava.user.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.bigjava.function.IsEmpty;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport {

	private IsEmpty isEmpty = new IsEmpty();
	private User user;
	private UserBiz userBiz;
	
	public void setUser(User user) {
		this.user = user;
	}

	public User getUser() {
		return user;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	/**
	 * ��¼�û�
	 */
	public String login() {
		System.out.println("����UserAction....login����");
		System.out.println(user);
		if (isEmpty.isEmpty(user.getUsername()) || isEmpty.isEmpty(user.getPassword())) {
			System.out.println("�û��������벻��Ϊ��");
			return "loginError";
		} else {
			List<User> userList = userBiz.loginUser(user);
			if (userList.size() == 0) {
				System.out.println("�û������������");
				return "loginError";
			} else {
				User user = userList.get(0);
				if (user.getRoot() == 1) {
					System.out.println("��ͨ�û���¼");
					return "loginSuccess";
				} else if (user.getRoot() == 2) {
					System.out.println("�곤��¼");
					return "loginStore";
				} else if (user.getRoot() == 3) {
					System.out.println("����Ա��¼");
					return "adminLogin";
				} else if (user.getU_is_freeze() == 1) {
					System.out.println("�ⶳ״̬");
					return "loginSuccess";
				} else if (user.getU_is_freeze() == 2) {
					System.out.println("����״̬���û����ܵ�¼");
					return "loginError";
				}
			}
			return ERROR;
		}
	}

	/**
	 * ע���û�
	 */
	public String register() {
		System.out.println("����UserAction....register����");
		userBiz.registerUser(user);
		return "registerSuccess";
	}

	/**
	 * ����ID��ȡ�û���Ϣ
	 */
	public String getUserById() throws Exception {
		System.out.println("����UserAction....getUserById����");
		userBiz.query(user.getU_id());
		return "getUserById";
	}

	/**
	 * �޸���Ϣ
	 */
	public String update() throws Exception {
		System.out.println("����UserAction....update����");
		User users = userBiz.query(user.getU_id());
		if (users == null) {
			System.out.println("û�д��û�");
			return "updateError";
		}
		userBiz.updateUser(user, users);
		return "updateSuccess";
	}

	/**
	 * �޸��û�����
	 */
	public String updatePassword() throws Exception {
		System.out.println("����UserAction....updatePassword����");
		User user = new User();
		userBiz.updateUserPassword(user.getPassword(), user);
		return "updatePasswordSuccess";
	}
	
	/**
	 * �����û����ⶳ�û�
	 */
	public String updateUserStates() throws Exception {
		System.out.println("���붳���û����ⶳ�û��ķ�����������");

		return "";

	}

	/**
	 * չʾȫ��
	 */
//	public String showAll() throws Exception {
//		System.out.println("����UserAction....showAll����");
//		userBiz.showAllUser();
//		return "showAllSuccess";
//	}

	/**
	 * У��
	 */
	public String checkUsername() throws Exception {
		System.out.println("����UserAction....checkUsername����");
		if (userBiz.checkUsername(user.getUsername())) {
			String result = "�û����Ѵ���";
		}
		return SUCCESS;
	}

	/**
	 * ע���û�
	 */
	public String close() throws Exception {
		System.out.println("ע���û�");
		ServletActionContext.getRequest().getSession().invalidate();
		return "close";
	}

}
