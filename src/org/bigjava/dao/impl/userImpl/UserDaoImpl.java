package org.bigjava.dao.impl.userImpl;

import java.sql.SQLException;
import java.util.List;

import org.bigjava.dao.user.UserDao;
import org.bigjava.entity.user.User;
import org.bigjava.function.Paging;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	// 注册用户
	@Override
	public void registerUser(User user) {
		// TODO Auto-generated method stub
		System.out.println("dao开始注册");
		user.setRoot(1);// 默认用户权限为1(普通用户)
		user.setU_is_freeze(1);//	默认用户为解冻状态(解冻状态)
		this.getHibernateTemplate().save(user);//	user保存入数据库中
	}

	// 修改
	@Override
	public void updateUser(User user, User users) {
		// TODO Auto-generated method stub
		System.out.println("dao开始修改");
		users.setUsername(user.getUsername());// 将用户名存入User中
		users.setSex(user.getSex());//	将性别存入User中
		this.getHibernateTemplate().update(users);//	将user中的值对比数据库中的值进行修改
	}

	// 通过id查询用户
	@Override
	public User demend(int id) {
		// TODO Auto-generated method stub
		System.out.println("dao通过id查询");
		User user = this.getHibernateTemplate().get(User.class, id);//	通过id查询用户
		return user;
	}

	// 通过id删除用户
	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		System.out.println("dao通过id删除用户");
		
		this.getHibernateTemplate().delete(user);// 删除数据库中与user匹配的信息
	}

	// 管理员通过模糊分页查询用户
	@Override
	public List<User> limitDemend(final String username, final Paging page) {
		// TODO Auto-generated method stub
		System.out.println("dao管理员通过模糊分页查询用户");
		List<User> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
				@Override
				public Object doInHibernate(Session session) throws HibernateException, 
						SQLException {// 通过hibernateTemplate回调sessionFactory方法
					// TODO Auto-generated method stub
					Query query = session.createQuery("from User where username like ?").setString(0, username+"%");// 模糊查询
					query.setFirstResult(page.getStart());// 分页查询从哪一条开始查
					query.setMaxResults(page.getPagesize());// 分页查询查多少条
					
					return query.list();// 将查询到的值转换为数组类型
				}
			}
		);
		System.out.println("模糊分页查询到的数据"+list);
		return list;
	}

	// 管理员通过模糊分页查询总页数
	@Override
	public int demendPages(String username) {
		// TODO Auto-generated method stub
		System.out.println("管理员通过模糊分页查询总页数");
		int totalNumber = 0;
		List<Long> list = this.getHibernateTemplate().find("select count(*) from User where username like ?",username+"%");// 模糊查询一共有多少条数据
		if (list != null && list.size() != 0) {
			totalNumber = list.get(0).intValue();//获取查询到的数据条数
		}
		System.out.println("查询到的总条数" + totalNumber);
		return totalNumber;
	}

	// 校验用户名是否已存在
	@Override
	public boolean checkUsername(String username) {
		// TODO Auto-generated method stub
		System.out.println("开始校验");
		List<User> list = this.getHibernateTemplate().find("from User where username = ?", username);// 通过用户名查询用户
		if (list == null || list.size() == 0) {// 当没有查询到用户时
			System.out.println("用户名符合");
			return false;// 返回false
		}
		System.out.println("用户名已存在");
		return true;// 查询到用户时返回true
	}
	
}
