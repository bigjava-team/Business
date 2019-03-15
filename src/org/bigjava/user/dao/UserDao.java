package org.bigjava.user.dao;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

/**
 * �û�����
 * @author Administrator
 *
 */
public interface UserDao {
	
	/**
	 * ע���û�
	 * userΪע���û���Ϣ
	 * 
	 */
	public void registerUser(User user); 
	
	/**
	 * ��¼�û�
	 * userΪ��¼���û���������
	 * 
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
	 * idΪ��ѯ���û�id
	 * 
	 */
	public User query(int id);
	
	/**
	 * ͨ��idɾ���û�
	 * idΪɾ���û���id
	 * 
	 */
	public void deleteUser(User user);
	
	/**
	 * ����Աͨ��ģ����ҳ��ѯ�û�
	 * usernameΪģ������������
	 * PagingΪ��ҳ����
	 * rootΪ�û���Ȩ��
	 * 
	 */
	public List<User> limitDemend(String username, Paging page, int root);
	
	/**
	 * ����Աͨ��ģ����ѯ��ҳ��
	 * usernameΪģ������������
	 * rootΪ�û���Ȩ��
	 * 
	 */
	public int queryPages(String username, int root);
	
	/**
	 * У���û����Ƿ��Ѵ���
	 * usernameΪУ����û���
	 * 
	 */
	public boolean checkUsername(String username);
	
	/**
	 * �޸��û�����
	 * passwordΪ�޸ĺ������
	 * userΪ���ݿ���û���Ϣ
	 * 
	 */
	public void updateUserPassword(String password, User user);
	
	/**
	 * �ղص���
	 * userΪ�ղص��̵��û���Ϣ
	 * merchantΪ�ղصĵ�����Ϣ
	 * 
	 */
	public void collectMerchant(User user, Merchant merchant);
	
	/**
	 * ɾ���ղصĵ���
	 * userΪɾ�����̵��û���Ϣ
	 * merchantΪɾ���ĵ�����Ϣ
	 * 
	 */
	public void deleteCollectMerchant(User user, Merchant merchant);
}
