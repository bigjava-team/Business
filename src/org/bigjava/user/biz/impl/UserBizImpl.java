package org.bigjava.user.biz.impl;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

public class UserBizImpl implements UserBiz {
	
	

	@Override
	public void registerUser(User user) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateUser(User user, User users) {
		// TODO Auto-generated method stub

	}

	@Override
	public User demend(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<User> limitDemend(String username, Paging page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int demendPages(String username) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean checkUsername(String username) {
		// TODO Auto-generated method stub
		return false;
	}

}
