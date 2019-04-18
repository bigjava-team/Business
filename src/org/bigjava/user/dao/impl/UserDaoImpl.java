package org.bigjava.user.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.dao.UserDao;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	// 注册用户
	@Override
	public void registerUser(User user) {// 注册时注册的信息
		System.out.println("dao开始注册");
		user.setRoot(1);// 默认用户权限为1(普通用户)
		user.setU_is_freeze(1);// 默认用户为解冻状态(解冻状态)
		this.getHibernateTemplate().save(user);// user保存入数据库中
	}

	// 登录用户
	@Override
	public List<User> loginUser(User user) {// 登录时传入的信息
		String hql = "from User where username = ? and password = ? ";
		List<User> userList = this.getHibernateTemplate().find(hql,
				new String[] { user.getUsername(), user.getPassword() });// 通过username和password查询对应的用户信息
		System.out.println("userList>>>" + userList);
		return userList;
	}

	// 修改
	@Override
	public void updateUser(User user, User users) {// users为修改的内容、user为数据库中的用户信息
		System.out.println("dao开始修改");
		if (users.getUsername() == null || users.getUsername().equals("")) {// 判断修改的用户名不能为空

		} else {
			if (!users.getUsername().equals(user.getUsername())) {// 如果修改的用户名与数据库中的用户名不一样将其保存至user中
				user.setUsername(users.getUsername());
			}
		}

		if (users.getSex() == null || users.getSex().equals("")) {// 判断修改的用户性别不能为空

		} else {
			if (!users.getSex().equals(user.getSex())) {// 如果修改的用户性别与数据库中的用户性别不一样将其保存至user中
				user.setSex(users.getSex());
			}
		}
		
		if (users.getU_name() == null || users.getU_name().equals("")) {

		} else {
			if (!users.getU_name().equals(user.getU_name())) {
				user.setU_name(users.getU_name());
			}
		}
		
		if (users.getPhone() == null || users.getPhone().equals("")) {

		} else {
			if (!users.getPhone().equals(user.getPhone())) {
				user.setPhone(users.getPhone());
			}
		}
		this.getHibernateTemplate().merge(user);// 将user中的值对比数据库中的值进行修改
	}

	// 通过id查询用户
	@Override
	public User query(int id) {// 查询用户的id
		System.out.println("dao通过id查询");
		User user = this.getHibernateTemplate().get(User.class, id);// 通过id查询用户
		return user;
	}

	// 通过id删除用户
	@Override
	public void deleteUser(User user) {// 删除用户的id
		// TODO Auto-generated method stub
		System.out.println("dao通过id删除用户");

		this.getHibernateTemplate().delete(user);// 删除数据库中与user匹配的信息
	}

	// 管理员通过模糊分页查询用户
	@Override
	public List<User> limitDemend(final String username, final Paging page, final int root) {// username为查询的内容、page为Paging中的内容
		// TODO Auto-generated method stub
		System.out.println("dao管理员通过模糊分页查询用户");
		List<User> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// 通过hibernateTemplate回调sessionFactory方法
				// TODO Auto-generated method stub
				Query query = null;
				String hql = "from User where username like ?";
				if (root != 0) {
					hql += " and root = ?";
					query = session.createQuery(hql).setString(0, "%" + username + "%").setInteger(1, root);// 模糊查询规定权限的用户信息
				} else {
					query = session.createQuery(hql).setString(0, "%" + username + "%");// 模糊查询
				}
				query.setFirstResult(page.getStart());// 分页查询从哪一条开始查
				query.setMaxResults(page.getPagesize());// 分页查询查多少条

				return query.list();// 将查询到的值转换为数组类型
			}
		});
		System.out.println("模糊分页查询到的数据" + list);
		return list;
	}

	// 管理员通过模糊分页查询总页数
	@Override
	public int queryPages(String username, int u_root) {// name为查询的内容
		// TODO Auto-generated method stub
		System.out.println("管理员通过模糊分页查询总页数");
		int totalNumber = 0;
		String hql = "select count(*) from User where username like ?";
		List<Long> list = null;
		if (u_root != 0) {
			hql += " and root = ?";
			list = this.getHibernateTemplate().find(hql, new Object[] { "%" + username + "%", u_root });// 通过模糊搜索查询规定权限的用户一共有多少条
		} else {
			list = this.getHibernateTemplate().find(hql, "%" + username + "%");// 模糊查询一共有多少条数据
		}
		if (list != null && list.size() != 0) {
			totalNumber = list.get(0).intValue();// 获取查询到的数据条数
		}
		System.out.println("查询到的总条数" + totalNumber);
		return totalNumber;
	}

	// 校验用户名是否已存在
	@Override
	public boolean checkUsername(String username) {// username为查询的用户
		// TODO Auto-generated method stub
		System.out.println("开始校验");
		List<User> list = this.getHibernateTemplate().find("from User where username = ?", username);// 通过用户名查询用户
		if (list.size() != 0) {
			return true;
		}
		return false;
	}

	// 修改用户密码
	public void updateUserPassword(String password, User user) {// password修改后的密码、user为数据库中的用户数据
		// TODO Auto-generated method stub
		System.out.println("开始修改密码");
		user.setPassword(password);// 替换实体层中的密码

		this.getHibernateTemplate().update(user);// 将用户信息修改
	}

	// 冻结用户，解冻用户
	@Override
	public void updateFreeze(int freeze, User user) {
		System.out.println("进入UserdaoImpl...冻结方法");
		user.setU_is_freeze(freeze); // 替换实体层的用户状态
		this.getHibernateTemplate().update(user); // 将用户状态修改
	}

	// 通过用户名获取用户信息
	@Override
	public User queryUsernameUser(String username) {
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		List<User> listUser = session.createQuery("from User where username = ?").setString(0, username).list();
		if (listUser.size() == 0) {
			System.out.println("没有此用户");
			return null;
		}
		session.close();
		return listUser.get(0);
	}

	// 模糊查询用户信息
	@Override
	public List<User> likeQueryListUser(String searchText) {
		List<User> list = this.getHibernateTemplate().find("from User where username like ? and root!=3", "%"+searchText+"%");
		return list;
	}
}
