package org.bigjava.user.biz.impl;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.dao.UserDao;
import org.bigjava.user.entity.User;

public class UserBizImpl implements UserBiz {
	
	//注入UserDao
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	//注册用户
	@Override
	public void registerUser(User user) {
		userDao.registerUser(user);
	}
	
	//登录用户
	@Override
	public List<User> loginUser(User user) {
		return userDao.loginUser(user);
	}

	//修改用户信息
	@Override
	public void updateUser(User user, User users) {
		userDao.updateUser(user, users);
	}

	//通过ID查询用户
	@Override
	public User query(int id) {
		return userDao.query(id);
	}

	//删除用户
	@Override
	public void deleteUser(User user) {
		userDao.deleteUser(user);
	}

	//管理员通过模糊分页查询用户
	@Override
	public List<User> limitDemend(String username, Paging page) {
		return userDao.limitDemend(username, page);
	}

	//管理员通过模糊查询总页数
	@Override
	public int queryPages(String username) {
		// TODO Auto-generated method stub
		return userDao.queryPages(username);
	}

	//校验用户名
	@Override
	public boolean checkUsername(String username) {
		return userDao.checkUsername(username);
	}

	//修改密码
	@Override
	public void updateUserPassword(String password, User user) {
		userDao.updateUserPassword(password, user);
	}

}
