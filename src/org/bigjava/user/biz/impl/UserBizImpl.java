package org.bigjava.user.biz.impl;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.dao.UserDao;
import org.bigjava.user.entity.User;

public class UserBizImpl implements UserBiz {
	
	//ע��UserDao
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	//ע���û�
	@Override
	public void registerUser(User user) {
		userDao.registerUser(user);
	}
	
	//��¼�û�
	@Override
	public List<User> loginUser(User user) {
		return userDao.loginUser(user);
	}

	//�޸��û���Ϣ
	@Override
	public void updateUser(User user, User users) {
		userDao.updateUser(user, users);
	}

	//ͨ��ID��ѯ�û�
	@Override
	public User query(int id) {
		return userDao.query(id);
	}

	//ɾ���û�
	@Override
	public void deleteUser(User user) {
		userDao.deleteUser(user);
	}

	//����Աͨ��ģ����ҳ��ѯ�û�
	@Override
	public List<User> limitDemend(String username, Paging page, int u_root) {
		return userDao.limitDemend(username, page, u_root);
	}

	//����Աͨ��ģ����ѯ��ҳ��
	@Override
	public int queryPages(String username, int u_root) {
		// TODO Auto-generated method stub
		return userDao.queryPages(username, u_root);
	}

	//У���û���
	@Override
	public boolean checkUserByUsername(String username) {
		return userDao.checkUsername(username);
	}

	//�޸�����
	@Override
	public void updateUserPassword(String password, User user) {
		userDao.updateUserPassword(password, user);
	}

}
