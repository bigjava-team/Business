package org.bigjava.addr.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.bigjava.addr.dao.AddrDao;
import org.bigjava.addr.entity.Addr;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class AddrDaoImpl extends HibernateDaoSupport implements AddrDao {

	// 添加收货地址
	@Override
	public void addAddr(Addr addr, User user) {// addr为收货地址、user为添加收货地址的用户
		// TODO Auto-generated method stub
		System.out.println("开始执行addAddr方法");
		
		addr.setUser(user);// 获取连接的外键id值
		
		this.getHibernateTemplate().save(addr);// 存储收货地址的信息
		
	}

	// 修改收货地址
	@Override
	public void updateAddr(Addr addr, Addr updateAddr) {// addr为数据库中的收货地址、updateAddr为修改后的收货地址
		// TODO Auto-generated method stub
		System.out.println("开始执行updateAddr方法");
		
		if (updateAddr.getA_name() == null || updateAddr.getA_name().equals("")) {// 判断修改的收件人不能为空
			
		} else {
			if (!updateAddr.getA_name().equals(addr.getA_name())) {// 如果修改的收件人与数据库中的收件人不一样则将其保存至addr中
				addr.setA_name(updateAddr.getA_name());
			}
		}
		
		if (updateAddr.getA_phone() == null || updateAddr.getA_phone().equals("")) {// 判断修改的手机号码不能为空
			
		} else {
			if (!updateAddr.getA_phone().equals(addr.getA_phone())) {// 如果修改的手机号码与数据库中的手机号码不一样则将其保存至addr中
				addr.setA_phone(updateAddr.getA_phone());
			}
		}
		
		if (updateAddr.getAddress() == null || updateAddr.getAddress().equals("")) {// 判断修改的收货地址不能为空
			
		} else {
			if (!updateAddr.getAddress().equals(addr.getAddress())) {// 如果修改的收货地址与数据库中的收货地址不一样则将其保存至addr中
				addr.setAddress(updateAddr.getAddress());	
			}
		}
		
		this.getHibernateTemplate().update(addr);
		
	}

	// 删除收货地址
	@Override
	public void deleteAddr(Addr addr) {// addr为删除的收货地址
		// TODO Auto-generated method stub
		System.out.println("开始执行deleteAddr方法");
		this.getHibernateTemplate().delete(addr);
		
	}

	// 根据用户权限，分页查询收货地址
	@Override
	public List<Addr> queryAllAddr(final Paging page, final User user) {// page为分页的类、user为进行查询收货的地址的用户
		// TODO Auto-generated method stub
		System.out.println("开始执行queryAllAddr方法");
		List<Addr> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// 通过hibernateTemplate回调sessionFactory方法
				// TODO Auto-generated method stub
				String hql = "from Addr";
				Query query = null;
				if (user.getRoot() == 1 || user.getRoot() == 2) {
					hql += " where u_id = ?";
					query = session.createQuery(hql).setInteger(0, user.getU_id());// 通过用户id查询收货地址
				} else if (user.getRoot() == 3) {
					query = session.createQuery("from Addr");
				}
				query.setFirstResult(page.getStart());// 分页查询从哪一条开始查
				query.setMaxResults(page.getPagesize());// 分页查询查多少条

				return query.list();// 将查询到的值转换为数组类型
			}
		});
		System.out.println("查询到的数据" + list);
		return null;
	}

	// 根据用户权限，查询收货地址的条数
	@Override
	public int queryAllAddrNumber(User user) {// user为查询收货地址的用户、u_id为
		// TODO Auto-generated method stub
		System.out.println("开始执行queryAllNumber方法");
		int totalNumber = 0;
		List<Long> list = new ArrayList<Long>();
		String hql = "select count(*) from Addr";// 查询收货地址的个数
		if (user.getRoot() == 1 || user.getRoot() == 2) {
			hql += " where u_id = ?";
			list = this.getHibernateTemplate().find(hql, user.getU_id());// 普通用户和店长查询自己的收货地址
		} else if (user.getRoot() == 3) {
			list = this.getHibernateTemplate().find(hql);// 管理员查询所有的收货地址
		}
		
		if (list.size() != 0 || list != null) {
			totalNumber = list.get(0).intValue();// 获取查询到的收货地址条数
		}
		System.out.println("查询到的条数" + totalNumber);
		return totalNumber;
	}

	// 根据收货地址id查询收货地址信息
	@Override
	public Addr queryAddr_id(int id) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryAddr_id方法");
		return this.getHibernateTemplate().get(Addr.class, id);// 通过id查询收货地址
	}

}
