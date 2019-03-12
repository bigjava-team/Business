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

	// �������
	@Override
	public void addComment(Comment comment, User user, Product product) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��addComment����");
		
		comment.setUser(user);// �����User������
		comment.setProduct(product);// ���Product������
		
		this.getHibernateTemplate().save(comment);// ����Comment��������
		
	}

	// ͨ������id��ѯ��������
	@Override
	public Comment queryComment_id(int com_id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryComment����");
		return this.getHibernateTemplate().get(Comment.class, com_id);// ͨ������id��ѯ��������
	}

	// ɾ������
	@Override
	public void deleteComment(Comment comment) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��deleteComment����");
		this.getHibernateTemplate().delete(comment);
	}

	// ��ҳ������ѯ��������
	@Override
	public List<Comment> queryAllComment(final User user, final Paging page) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryAllComment����");
		List<Comment> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// ͨ��hibernateTemplate�ص�sessionFactory����
				// TODO Auto-generated method stub
				String hql = "from Comment";
				Query query = null;
				if (user.getRoot() == 3) {
					query = session.createQuery(hql);
				} else {
					hql += " where u_id = ?";
					query = session.createQuery(hql).setInteger(0, user.getU_id());// ͨ���û�id��ѯ��������
				}
				query.setFirstResult(page.getStart());// ��ҳ��ѯ����һ����ʼ��
				query.setMaxResults(page.getPagesize());// ��ҳ��ѯ�������

				return query.list();// ����ѯ����ֵת��Ϊ��������
			}
		});
		System.out.println("��ѯ��������" + list);
		return list;
	}

	// ������ѯ��������
	@Override
	public int queryAllCommentNumber(User user) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryAllCommentNumber����");
		int totalNumber = 0;
		List<Long> list = null;
		String hql = "select count(*) from Comment";
		if (user.getRoot() == 3) {// ����ԱȨ�޲�ѯ����
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
