package org.bigjava.user.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.bigjava.function.IsEmpty;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User> {

	private IsEmpty isEmpty = new IsEmpty();
	private User user = new User();
	private UserBiz userBiz;

	@Override
	public User getModel() {
		return user;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	
	

	/**
	 * 登录用户
	 */
	public String login() throws Exception {
		System.out.println("进入UserAction....login方法");
		if (isEmpty.isEmpty(user.getUsername()) || isEmpty.isEmpty(user.getPassword())) {
			System.out.println("用户名或密码不能为空");
			return "loginError";
		} else {
			List<User> userList = userBiz.loginUser(user);
			if (userList.size() == 0) {
				System.out.println("用户名或密码错误");
				return "loginError";
			} else {
				User user = userList.get(0);
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
	public String register() throws Exception {
		System.out.println("进入UserAction....register方法");
		userBiz.registerUser(user);
		return "registerSuccess";
	}

	/**
	 * 根据ID获取用户信息
	 */
	public String getUserById() throws Exception {
		System.out.println("进入UserAction....getUserById方法");
		userBiz.query(user.getU_id());
		return "getUserById";
	}

	/**
	 * 修改信息
	 */
	public String update() throws Exception {
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
	public String updatePassword() throws Exception {
		System.out.println("进入UserAction....updatePassword方法");
		User user = new User();
		userBiz.updateUserPassword(user.getPassword(), user);
		return "updatePasswordSuccess";
	}
	
	/**
	 * 冻结用户，解冻用户
	 */
	public String updateUserStates() throws Exception {
		System.out.println("进入冻结用户，解冻用户的方法。。。。");

		return "";

	}

	/**
	 * 展示全部
	 */
//	public String showAll() throws Exception {
//		System.out.println("进入UserAction....showAll方法");
//		userBiz.showAllUser();
//		return "showAllSuccess";
//	}

	/**
	 * 校验
	 */
	public String checkUsername() throws Exception {
		System.out.println("进入UserAction....checkUsername方法");
		if (userBiz.checkUsername(user.getUsername())) {
			String result = "用户名已存在";
		}
		return SUCCESS;
	}

	/**
	 * 注销用户
	 */
	public String close() throws Exception {
		System.out.println("注销用户");
		ServletActionContext.getRequest().getSession().invalidate();
		return "close";
	}

}
