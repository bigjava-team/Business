package org.bigjava.comment.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.bigjava.comment.dao.CommentDao;
import org.bigjava.comment.entity.Comment;
import org.bigjava.function.Paging;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CommentDaoImpl extends HibernateDaoSupport implements CommentDao {

	// 添加评论
	@Override
	public void addComment(Comment comment, User user, Product product) {
		// TODO Auto-generated method stub
		System.out.println("开始执行addComment方法");
		
		comment.setUser(user);// 添加与User类的外键
		comment.setProduct(product);// 添加Product类的外键
		
		this.getHibernateTemplate().save(comment);// 保存Comment评论内容
		
	}

	// 通过评论id查询评论内容
	@Override
	public Comment queryComment_id(int com_id) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryComment方法");
		return this.getHibernateTemplate().get(Comment.class, com_id);// 通过评论id查询评论内容
	}

	// 删除评论
	@Override
	public void deleteComment(Comment comment) {
		// TODO Auto-generated method stub
		System.out.println("开始执行deleteComment方法");
		this.getHibernateTemplate().delete(comment);
	}

	// 分页条件查询评论内容
	@Override
	public List<Comment> queryAllComment(final User user, final Paging page) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryAllComment方法");
		List<Comment> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// 通过hibernateTemplate回调sessionFactory方法
				// TODO Auto-generated method stub
				String hql = "from Comment";
				Query query = null;
				if (user.getRoot() == 3) {
					query = session.createQuery(hql);
				} else {
					hql += " where u_id = ?";
					query = session.createQuery(hql).setInteger(0, user.getU_id());// 通过用户id查询评论内容
				}
				query.setFirstResult(page.getStart());// 分页查询从哪一条开始查
				query.setMaxResults(page.getPagesize());// 分页查询查多少条

				return query.list();// 将查询到的值转换为数组类型
			}
		});
		System.out.println("查询到的数据" + list);
		return list;
	}

	// 条件查询评论数量
	@Override
	public int queryAllCommentNumber(User user) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryAllCommentNumber方法");
		int totalNumber = 0;
		List<Long> list = null;
		String hql = "select count(*) from Comment";
		if (user.getRoot() == 3) {// 管理员权限查询评论
			list = this.getHibernateTemplate().find(hql);
		} else {
			hql += " where u_id = ?";
			list = this.getHibernateTemplate().find(hql, user.getU_id());
		}
		if (list.size() != 0) {
			totalNumber = list.get(0).intValue();
		}
		return totalNumber;
	}

}
