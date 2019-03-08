package org.bigjava.user.biz.impl;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.dao.UserDao;
import org.bigjava.user.entity.User;

public class UserBizImpl implements UserBiz {
	
	//×¢ÈëUserDao
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void registerUser(User user) {
		userDao.registerUser(user);
	}

	@Override
	public void updateUser(User user, User users) {
		userDao.updateUser(user, users);
	}

	@Override
	public User query(int id) {
		return userDao.query(id);
	}

	@Override
	public void deleteUser(User user) {
		userDao.deleteUser(user);
	}

	@Override
	public List<User> limitDemend(String username, Paging page) {
		return userDao.limitDemend(username, page);
	}

	@Override
	public int queryPages(String username) {
		// TODO Auto-generated method stub
		return userDao.queryPages(username);
	}

	@Override
	public boolean checkUsername(String username) {
		// TODO Auto-generated method stub
		return false;
	}

}
