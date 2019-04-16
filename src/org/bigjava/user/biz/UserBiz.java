package org.bigjava.user.biz;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.user.entity.User;

/**
 * �û�����
 * 
 * @author Mr.Man
 *
 */
public interface UserBiz {

	/**
	 * �û�ע��
	 */
	public void registerUser(User user);

	/**
	 * ��¼�û�
	 */
	public List<User> loginUser(User user);

	/**
	 * �޸��û���Ϣ
	 */
	public void updateUser(User user, User users);

	/**
	 * ͨ��ID��ѯ�û�
	 */
	public User query(int id);

	/**
	 * ͨ��IDɾ���û�
	 */
	public void deleteUser(User user);

	/**
	 * ����Աͨ��ģ����ҳ��ѯ�û�
	 */
	public List<User> limitDemend(String username, Paging page, int u_root);

	/**
	 * ����Աͨ��ģ����ѯ��ҳ��
	 */
	public int queryPages(String username, int u_root);

	/**
	 * У���û����Ƿ����
	 */
	public boolean checkUsername(String username);

	/**
	 * �޸�����
	 */
	public void updateUserPassword(String password, User user);
	
	/**
	 * �޸��û�״̬��������ⶳ�û���
	 */
	public void updateUserFreeze(int freeze, User user);
	
	/**
	 * ͨ���û�����ȡ�û���Ϣ
	 */
	public User queryUsernameUser(String username);
	
	/**
	 * ͨ���û���ģ����ѯ�û���Ϣ
	 */
	public List<User> likeQueryListUser(String searchText);
}
