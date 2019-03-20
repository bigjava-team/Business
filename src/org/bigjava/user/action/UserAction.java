package org.bigjava.user.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport {

	private IsEmpty isEmpty = new IsEmpty();
	private User user;
	private UserBiz userBiz;
	private String searchText; // 搜索的参数值
	private List<User> users; // 接收搜索的用户列表

	private String check;// 校验用户名已存在返回的信息
	
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
	 * 获取参数
	 * 
	 * @param key
	 * @return
	 */
	public String getParam(String key) {
		return ServletActionContext.getRequest().getParameter(key);
	}

	/**
	 * 登录用户
	 */
	public String login() {
		System.out.println("进入UserAction....login方法");
		System.out.println(user);
		if (isEmpty.isEmpty(user.getUsername()) || isEmpty.isEmpty(user.getPassword())) {
			System.out.println("1");
			System.out.println("用户名或密码不能为空");
			return "loginError";
		} else {
			List<User> userList = userBiz.loginUser(user);
			if (userList.size() == 0) {
				System.out.println("用户名或密码错误");
				return "loginError";
			} else {
				User user = userList.get(0);
				// 将user存入session中
				ActionContext.getContext().getSession().put("loginUser", user);
				if (user.getRoot() == 1) {
					System.out.println("普通用户登录");
					return "loginSuccess";
				} else if (user.getRoot() == 2) {
					System.out.println("店长登录");
					return "loginStore";
				} else if (user.getRoot() == 3) {
					System.out.println("管理员登录");
					return "adminLogin";
				} else if (user.getU_is_freeze() == 1) {
					System.out.println("解冻状态");
					return "loginSuccess";
				} else if (user.getU_is_freeze() == 2) {
					System.out.println("冻结状态，用户不能登录");
					return "loginError";
				}
			}
			return ERROR;
		}
	}

	/**
	 * 注册用户
	 */
	public String register() {
		System.out.println("进入UserAction....register方法");
		userBiz.registerUser(user);
		return "registerSuccess";
	}

	/**
	 * 根据ID获取用户信息
	 */
	public String queryUserId()  {
		System.out.println("进入UserAction....getUserById方法");
		userBiz.query(user.getU_id());
		return "getUserById";
	}

	/**
	 * 修改信息
	 */
	public String update()  {
		System.out.println("进入UserAction....update方法");
		User users = userBiz.query(user.getU_id());
		if (users == null) {
			System.out.println("没有此用户");
			return "updateError";
		}
		userBiz.updateUser(user, users);
		return "updateSuccess";
	}

	/**
	 * 修改用户密码
	 */
	public String updatePassword() {
		System.out.println("进入UserAction....updatePassword方法");
		User user = new User();
		userBiz.updateUserPassword(user.getPassword(), user);
		return "updatePasswordSuccess";
	}

	/**
	 * 冻结用户，解冻用户
	 */
	public String updateUserStates()  {
		System.out.println("进入冻结用户，解冻用户的方法。。。。");

		return "";

	}

	/**
	 * 展示全部
	 */
	public String showAll() {
		System.out.println("进入UserAction....showAll方法");
		int u_root = user.getRoot();
		System.out.println("用户权限为：" + u_root);
		searchText = getParam(searchText); // 获取前台搜索框内的参数，传给注入的searchText

		if (searchText.equals("") || searchText.equals(null)) {
			System.out.println("没有此昵称");
		}

		// 根据搜索的内容与权限查询可搜索的总条数
		int totalNumber = userBiz.queryPages(searchText, u_root);

		// 当前页数
		int presentPage = 1;

		Paging paging = new Paging(presentPage, totalNumber, 1);
		// 接收搜索到的用户列表
		users = userBiz.limitDemend(searchText, paging, u_root);
		// 将users存入session中
		ActionContext.getContext().getSession().put("showUser", users);

		return "showAllSuccess";
	}

	/**
	 * 校验
	 */
	public String checkUsername(){
		System.out.println("进入UserAction....checkUsername方法");
		System.out.println(user.getUsername());
		if (userBiz.checkUsername(user.getUsername())) {
			check = "用户名已存在";
		}
		return SUCCESS;
	}

	/**
	 * 注销用户
	 */
	public String close()  {
		System.out.println("注销用户");
		ServletActionContext.getRequest().getSession().invalidate();
		return "close";
	}

}
