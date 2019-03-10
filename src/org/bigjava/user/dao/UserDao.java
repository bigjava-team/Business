package org.bigjava.user.dao;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.user.entity.User;

/**
 * �û�����
 * @author Administrator
 *
 */
public interface UserDao {
	
	/**
	 * ע���û�
	 */
	public void registerUser(User user); 
	
	/**
	 * ��¼�û�
	 */
	public List<User> loginUser(User user);
	
	/**
	 * �޸�
	 * userΪ���ݿ��е��û�����
	 * usersΪ�޸ĵ��û�����
	 * 
	 */
	public void updateUser(User user, User users);
	
	/**
	 * ͨ��id��ѯ�û�
	 */
	public User query(int id);
	
	/**
	 * ͨ��idɾ���û�
	 */
	public void deleteUser(User user);
	
	/**
	 * ����Աͨ��ģ����ҳ��ѯ�û�
	 */
	public List<User> limitDemend(String username, Paging page);
	
	/**
	 * ����Աͨ��ģ����ѯ��ҳ��
	 */
	public int queryPages(String username);
	
	/**
	 * У���û����Ƿ��Ѵ���
	 */
	public boolean checkUsername(String username);
	
	/**
	 * �޸��û�����
	 */
	public void updateUserPassword(String password, User user);
	
}
