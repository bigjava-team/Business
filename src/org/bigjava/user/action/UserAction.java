package org.bigjava.user.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.bigjava.function.FileImageAction;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.function.SendMail;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private IsEmpty isEmpty = new IsEmpty();
	private User user;
	private Paging paging;// 声明Paging类
	private User loginUser;
	private Merchant merchant;
	private FileImageAction fileImageAction;// 图片地址
	
	private UserBiz userBiz;
	private String searchText; // 搜索的参数值
	private List<User> users; // 接收搜索的用户列表

	private String emailAddress;// 邮箱号

	private String checkEmail;// 邮箱验证码

	private String check_login;// 登录的校验

	// 接收验证码 struts2 中的属性驱动
	private String checkcode;
	
	private String result;
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public FileImageAction getFileImageAction() {
		return fileImageAction;
	}

	public void setFileImageAction(FileImageAction fileImageAction) {
		this.fileImageAction = fileImageAction;
	}

	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}

	public String getCheck_login() {
		return check_login;
	}

	public void setCheck_login(String check_login) {
		this.check_login = check_login;
	}

	public String getCheckEmail() {
		return checkEmail;
	}

	public void setCheckEmail(String checkEmail) {
		this.checkEmail = checkEmail;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	private Map<String, Object> session;// 声明Map数组

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

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
	 * 登录用户
	 */
	public String login() {
		System.out.println("进入UserAction....login方法");
		System.out.println(user);

		// 判断验证码程序: session 随机验证码 是否和 input 文本框一样
		// 从 session 中获得验证码的随机值
		String checkcode1 = (String) ServletActionContext.getRequest().getSession().getAttribute("checkcode");
		if (!checkcode.equalsIgnoreCase(checkcode1)) {
			// 添加错误信息
			this.addActionError("验证码输入错误!");
			return "checkcodeFail";
		}
		if (isEmpty.isEmpty(user.getUsername()) || isEmpty.isEmpty(user.getPassword())) {
			System.out.println("用户名或密码不能为空");
			return "loginError";
		} else {
			List<User> userList = userBiz.loginUser(user);
			if (userList.size() == 0) {
				System.out.println("用户名或密码错误");
				check_login = "用户名或密码错误";
				return "loginError";
			} else {
				loginUser = userList.get(0);
				// 将user存入session中
				if (loginUser.getRoot() == 1 && loginUser.getU_is_freeze() == 1) {
					System.out.println("普通用户登录");
					System.out.println("解冻状态");
					return "loginSuccess";
				} else if (loginUser.getRoot() == 2 && loginUser.getU_is_freeze() == 1) {
					System.out.println("店长登录");
					System.out.println("解冻状态");
					merchant = loginUser.getMerchant();
					return "loginStore";
				} else if (loginUser.getRoot() == 3) {
					System.out.println("管理员登录");
					session = ActionContext.getContext().getSession();
					session.put("loginUser", loginUser);
					return "adminLogin";
				} else if (loginUser.getU_is_freeze() == 2) {
					check_login = "用户已冻结";
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
	public String queryUserId() {
		System.out.println("进入UserAction....getUserById方法");
		userBiz.query(user.getU_id());
		return "getUserById";
	}

	/**
	 * 修改信息
	 */
	public String update() {
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
		user = userBiz.queryUsernameUser(loginUser.getUsername());
		userBiz.updateUserPassword(loginUser.getPassword(), user);
		return "updatePasswordSuccess";
	}

	/**
	 * 冻结用户，解冻用户
	 */
	public String updateUserStates() {
		System.out.println("进入冻结用户，解冻用户的方法。。。。");
		user = userBiz.query(user.getU_id());
		int freeze = user.getU_is_freeze();
		if (freeze == 1) {
			freeze = 2;
		} else if (freeze == 2) {
			freeze = 1;
		}
		user.setU_is_freeze(freeze);
		userBiz.updateUserFreeze(freeze, user);
		return "updateUserStatesSuccess";
	}

	/**
	 * 展示全部用户
	 */
	public String showAll() {
		System.out.println("进入UserAction....showAll方法");
		/*session = ActionContext.getContext().getSession();*/
		int u_root = 0;
		if (loginUser.getRoot() != 0) {
			if (loginUser.getRoot() != 3) {
				u_root = loginUser.getRoot();
			}
		}

		System.out.println("用户权限为：" + u_root);
		System.out.println("搜索的值" + searchText);

		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
		}

		// 根据搜索的内容与权限查询可搜索的总条数
		int totalNumber = userBiz.queryPages(searchText, u_root);

		paging = new Paging(paging.getPresentPage(), totalNumber, 3);
		// 接收搜索到的用户列表
		users = userBiz.limitDemend(searchText, paging, u_root);
		// 将users存入session中
		/*session.put("showUser", users);
		session.put("paging", paging);
		session.put("userRoot", u_root);
		session.put("searchText", searchText);*/
		return "showAllUserSuccess";
	}

	/**
	 * 校验
	 */
	public String checkUsername() {
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
	public String close() {
		System.out.println("注销用户");
		ServletActionContext.getRequest().getSession().invalidate();
		return "close";
	}

	/**
	 * 发送邮件
	 */
	public String checkEmail() {
		System.out.println("发送邮件");
		String content = SendMail.randomNumber();// 验证码
		String subject = "光光网注册验证码";// 邮箱主题
		String emailTo = emailAddress;// 收件人的邮箱

		checkEmail = content;

		if (SendMail.sendMail(emailTo, content, subject)) {
			System.out.println("发送成功");
		}

		System.out.println("参数" + checkEmail);
		return SUCCESS;
	}

	/**
	 * 跳转到我的首页
	 */
	public String gotoUserIndex() {
		return "gotoUserIndex";
	}

	/**
	 * 跳转到商城网的中转页面
	 */
	public String skipIndex() {
		System.out.println("跳转到商城的中转页面");
		return "skipIndex";
	}

	/**
	 * 跳转到开店的页面
	 */
	public String SetUpShop() {
		if (isEmpty.isEmpty(loginUser.getUsername())) {
			System.out.println("清先登录用户");
			return "loginError";
		}
		System.out.println("跳转到开店的页面");
		return "SetUpShop";
	}

	// 校验密码是否正确
	public String checkPassword() {
		User users = userBiz.query(loginUser.getU_id());
		if (!users.getPassword().equals(loginUser.getPassword())) {
			result = "旧密码输入错误";
		}
		return SUCCESS;
	}
	
	// 校验真实姓名
	public String checkUName() {
		User users = userBiz.query(loginUser.getU_id());
		if (users.getU_name().equals(loginUser.getU_name())) {
			result = "修改后的真实姓名不能一样";
		}
		return SUCCESS;
	}
	
	// 校验真实姓名
	public String checkPhone() {
		User users = userBiz.query(loginUser.getU_id());
		if (users.getPhone().equals(loginUser.getPhone())) {
			result = "修改后的电话号码不能一样";
		}
		return SUCCESS;
	}
	
	// 修该用户信息
	public String updateUserNamePhoneImage() throws IOException {
		user = userBiz.query(loginUser.getU_id());
		if (fileImageAction.getFileImage() != null) {
			fileImageAction.fileImage();
			if (!user.getImage().equals("user_morentouxiang.jpg")) {
				File files = new File("E:\\Img\\"+user.getImage());
				files.delete();
			}
			loginUser.setImage(fileImageAction.getFileImageFileName());
		}
		userBiz.updateUser(user, loginUser);
		return "updateUserNamePhoneImage";
	}
}
