package org.bigjava.user.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.user.dao.UserDao;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	// ע���û�
	@Override
	public void registerUser(User user) {// ע��ʱע�����Ϣ
		System.out.println("dao��ʼע��");
		user.setRoot(1);// Ĭ���û�Ȩ��Ϊ1(��ͨ�û�)
		user.setU_is_freeze(1);//	Ĭ���û�Ϊ�ⶳ״̬(�ⶳ״̬)
		this.getHibernateTemplate().save(user);//	user���������ݿ���
	}
	
	//��¼�û�
	@Override
	public List<User> loginUser(User user) {// ��¼ʱ�������Ϣ
		String hql = "from User where username = ? and password = ? ";
		List<User> userList = getHibernateTemplate().find(hql, new String[] { user.getUsername(), user.getPassword() });// ͨ��username��password��ѯ��Ӧ���û���Ϣ
		System.out.println("userList>>>" + userList);
		return userList;
	}

	// �޸�
	@Override
	public void updateUser(User user, User users) {// usersΪ�޸ĵ����ݡ�userΪ���ݿ��е��û���Ϣ
		System.out.println("dao��ʼ�޸�");
		if (users.getUsername() == null || users.getUsername().equals("")) {// �ж��޸ĵ��û�������Ϊ��
			
		} else {
			if (!users.getUsername().equals(user.getUsername())) {// ����޸ĵ��û��������ݿ��е��û�����һ�����䱣����user��
				user.setUsername(users.getUsername());
			}
		}
		
		if (users.getSex() == null || users.getSex().equals("")) {// �ж��޸ĵ��û��Ա���Ϊ��
			
		} else {
			if (!users.getSex().equals(user.getSex())) {// ����޸ĵ��û��Ա������ݿ��е��û��Ա�һ�����䱣����user��
				user.setSex(users.getSex());
			}
		}
		this.getHibernateTemplate().update(users);//	��user�е�ֵ�Ա����ݿ��е�ֵ�����޸�
	}

	// ͨ��id��ѯ�û�
	@Override
	public User query(int id) {// ��ѯ�û���id
		System.out.println("daoͨ��id��ѯ");
		User user = this.getHibernateTemplate().get(User.class, id);//	ͨ��id��ѯ�û�
		return user;
	}

	// ͨ��idɾ���û�
	@Override
	public void deleteUser(User user) {// ɾ���û���id
		// TODO Auto-generated method stub
		System.out.println("daoͨ��idɾ���û�");
		
		this.getHibernateTemplate().delete(user);// ɾ�����ݿ�����userƥ�����Ϣ
	}

	// ����Աͨ��ģ����ҳ��ѯ�û�
	@Override
	public List<User> limitDemend(final String username, final Paging page) {// usernameΪ��ѯ�����ݡ�pageΪPaging�е�����
		// TODO Auto-generated method stub
		System.out.println("dao����Աͨ��ģ����ҳ��ѯ�û�");
		List<User> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
				@Override
				public Object doInHibernate(Session session) throws HibernateException, 
						SQLException {// ͨ��hibernateTemplate�ص�sessionFactory����
					// TODO Auto-generated method stub
					Query query = session.createQuery("from User where username like ?").setString(0, username+"%");// ģ����ѯ
					query.setFirstResult(page.getStart());// ��ҳ��ѯ����һ����ʼ��
					query.setMaxResults(page.getPagesize());// ��ҳ��ѯ�������
					
					return query.list();// ����ѯ����ֵת��Ϊ��������
				}
			}
		);
		System.out.println("ģ����ҳ��ѯ��������"+list);
		return list;
	}

	// ����Աͨ��ģ����ҳ��ѯ��ҳ��
	@Override
	public int queryPages(String username) {// nameΪ��ѯ������
		// TODO Auto-generated method stub
		System.out.println("����Աͨ��ģ����ҳ��ѯ��ҳ��");
		int totalNumber = 0;
		List<Long> list = this.getHibernateTemplate().find("select count(*) from User where username like ?",username+"%");// ģ����ѯһ���ж���������
		if (list != null && list.size() != 0) {
			totalNumber = list.get(0).intValue();//��ȡ��ѯ������������
		}
		System.out.println("��ѯ����������" + totalNumber);
		return totalNumber;
	}

	// У���û����Ƿ��Ѵ���
	@Override
	public boolean checkUsername(String username) {// usernameΪ��ѯ���û�
		// TODO Auto-generated method stub
		System.out.println("��ʼУ��");
		List<User> list = this.getHibernateTemplate().find("from User where username = ?", username);// ͨ���û�����ѯ�û�
		if (list == null || list.size() == 0) {// ��û�в�ѯ���û�ʱ
			System.out.println("�û�������");
			return false;// ����false
		}
		System.out.println("�û����Ѵ���");
		return true;// ��ѯ���û�ʱ����true
	}

	// �޸��û�����
	public void updateUserPassword(String password, User user) {// password�޸ĺ�����롢userΪ���ݿ��е��û�����
		// TODO Auto-generated method stub
		System.out.println("��ʼ�޸�����");
		user.setPassword(password);// �滻ʵ����е�����
		
		this.getHibernateTemplate().update(user);// ���û���Ϣ�޸�
	}

}
