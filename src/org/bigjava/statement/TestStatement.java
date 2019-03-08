package org.bigjava.statement;

import java.util.Scanner;

import org.bigjava.function.Paging;
import org.bigjava.function.SendMail;
import org.bigjava.user.dao.UserDao;
import org.bigjava.user.entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestStatement {
	
	public static ApplicationContext app = new ClassPathXmlApplicationContext("app.xml");
	public static UserDao userDao = (UserDao) app.getBean("userDaoImpl");
	public static Scanner input = new Scanner(System.in);
	
	// 查询用户是否已存在
	public static void checkUsername() {
		System.out.println("开始校验用户名");
		String username = input.next();
		userDao.checkUsername(username);
	}
	
	// 发送邮件
	public static void sendRandom() {
		String randomNumber = "验证码:"+SendMail.randomNumber();//	验证码
		
		SendMail.sendMail("2868583170@qq.com", randomNumber, "Business第二次测试");//	设置收件人邮箱、验证码、邮件主题
	}
	
	// 注册用户
	public static void register() {
		User user = new User();
		System.out.println("开始注册");
		System.out.println("用户名:");
		String username = input.next();
		System.out.println("密码:");
		String password = input.next();
		System.out.println("用户真实姓名:");
		String u_name = input.next();
		System.out.println("用户性别");
		String sex = input.next();
		System.out.println("用户邮箱:");
		String email = input.next();
		System.out.println("用户电话号码:");
		String phone = input.next();
		user.setUsername(username);
		user.setPassword(password);
		user.setU_name(u_name);
		user.setSex(sex);
		user.setEmail(email);
		user.setPhone(phone);
		
		userDao.registerUser(user);
		System.out.println("注册成功！");
	}
	
	//	修改语句
	public static void update() {
		User user = new User();
		System.out.println("开始修改");
		System.out.println("输入要修改的用户id");
		int u_id = input.nextInt();
		
		User users = userDao.query(u_id);
		if (users == null) {
			System.out.println("没有此用户");
			return;
		}
		
		System.out.println("用户名:");
		String username = input.next();
		System.out.println("用户性别");
		String sex = input.next();
		user.setU_id(u_id);
		user.setUsername(username);
		user.setSex(sex);
		
		userDao.updateUser(user, users);
		System.out.println("修改成功！");
	}
	
	//删除用户
	public static void delete() {
		System.out.println("开始删除");
		System.out.println("输入要删除的用户id");
		int u_id = input.nextInt();
		
		User user = userDao.query(u_id);
		if (user == null) {
			System.out.println("没有此用户");
			return;
		}
		
		userDao.deleteUser(user);
	}
	
	// 模糊查询总条数
	public static void demendPages() {
		System.out.println("开始查询");
		System.out.println("输入查询的username");
		String username = input.next();
		if (username.equals("") || username.equals(null)) {
			System.out.println("没有此昵称");
		}
		
		int totalNumber = userDao.queryPages(username);
		System.out.println("输入当前页数");
		int presentPage = input.nextInt();
		Paging paging = new Paging(presentPage, totalNumber);
		
		userDao.limitDemend(username, paging);
		
		
	}

}
