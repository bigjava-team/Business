package org.bigjava.user.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private IsEmpty isEmpty = new IsEmpty();
	private User user;
	private UserBiz userBiz;
	private String searchText; // �����Ĳ���ֵ
	private List<User> users; // �����������û��б�
	private Paging paging;// ����Paging��
	
	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	private Map<String, Object> session;// ����Map����
	
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	private String check;// У���û����Ѵ��ڷ��ص���Ϣ
	
	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	/**
	 * ��¼�û�
	 */
	public String login() {
		System.out.println("����UserAction....login����");
		System.out.println(user);
		if (isEmpty.isEmpty(user.getUsername()) || isEmpty.isEmpty(user.getPassword())) {
			System.out.println("1");
			System.out.println("�û��������벻��Ϊ��");
			return "loginError";
		} else {
			List<User> userList = userBiz.loginUser(user);
			if (userList.size() == 0) {
				System.out.println("�û������������");
				return "loginError";
			} else {
				User user = userList.get(0);
				// ��user����session��
				ActionContext.getContext().getSession().put("loginUser", user);
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
	public String queryUserId()  {
		System.out.println("����UserAction....getUserById����");
		userBiz.query(user.getU_id());
		return "getUserById";
	}

	/**
	 * �޸���Ϣ
	 */
	public String update()  {
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
	public String updatePassword() {
		System.out.println("����UserAction....updatePassword����");
		User user = new User();
		userBiz.updateUserPassword(user.getPassword(), user);
		return "updatePasswordSuccess";
	}

	/**
	 * �����û����ⶳ�û�
	 */
	public String updateUserStates()  {
		System.out.println("���붳���û����ⶳ�û��ķ�����������");

		return "";

	}

	/**
	 * չʾȫ��
	 */
	public String showAll() {
		System.out.println("����UserAction....showAll����");
		session = ActionContext.getContext().getSession();
		int u_root = 0;
		if (user.getRoot() != 0) {
			u_root = user.getRoot();
		}
		
		System.out.println("�û�Ȩ��Ϊ��" + u_root);
		System.out.println("������ֵ" + searchText);
		
		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
		}

		// ����������������Ȩ�޲�ѯ��������������
		int totalNumber = userBiz.queryPages(searchText, u_root);

		// ��ǰҳ��
		int presentPage = paging.getPresentPage();

		Paging paging = new Paging(presentPage, totalNumber, 1);
		// �������������û��б�
		users = userBiz.limitDemend(searchText, paging, u_root);
		// ��users����session��
		System.out.println(users);
		session.put("showUser", users);
		session.put("paging", paging);
		session.put("userRoot", u_root);
		session.put("searchText", searchText);

		return "showAllSuccess";
	}

	/**
	 * У��
	 */
	public String checkUsername(){
		System.out.println("����UserAction....checkUsername����");
		System.out.println(user.getUsername());
		if (userBiz.checkUsername(user.getUsername())) {
			check = "�û����Ѵ���";
		}
		return SUCCESS;
	}

	/**
	 * ע���û�
	 */
	public String close()  {
		System.out.println("ע���û�");
		ServletActionContext.getRequest().getSession().invalidate();
		return "close";
	}

}
