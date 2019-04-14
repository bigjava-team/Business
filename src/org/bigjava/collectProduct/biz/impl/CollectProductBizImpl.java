package org.bigjava.collectProduct.biz.impl;

import java.util.List;

import org.bigjava.collectProduct.biz.CollectProductBiz;
import org.bigjava.collectProduct.dao.CollectProductDao;
import org.bigjava.collectProduct.entity.CollectProduct;
import org.bigjava.function.Paging;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

public class CollectProductBizImpl implements CollectProductBiz {

	private CollectProductDao collectProductDao;
	
	public CollectProductDao getCollectProductDao() {
		return collectProductDao;
	}

	public void setCollectProductDao(CollectProductDao collectProductDao) {
		this.collectProductDao = collectProductDao;
	}

	// �ղ���Ʒ
	@Override
	public void addCollectProduct(CollectProduct collectProduct) {
		// TODO Auto-generated method stub
		collectProductDao.addCollectProduct(collectProduct);
	}

	// ɾ���ղص���Ʒ
	@Override
	public void deleteCollectProduct(CollectProduct collectProduct) {
		// TODO Auto-generated method stub
		collectProductDao.deleteCollectProduct(collectProduct);
	}

	// ͨ���ղ���Ʒ��id��ѯ�ղ���Ʒ������
	@Override
	public boolean queryCollectUser_id(int u_id, int p_id) {
		// TODO Auto-generated method stub
		return collectProductDao.queryCollectUser_id(u_id,p_id);
	}

	// ��ҳ��ѯ�ղ���Ʒ��
	@Override
	public List<CollectProduct> queryCollectProdct_Uid(int u_id, Paging paging) {
		// TODO Auto-generated method stub
		return collectProductDao.queryCollectProdct_Uid(u_id, paging);
	}

	// ��ѯ�ղ���Ʒ������
	@Override
	public int queryCollectProduct_number(int u_id) {
		// TODO Auto-generated method stub
		return collectProductDao.queryCollectProduct_number(u_id);
	}

	@Override
	public List<CollectProduct> queryUserCollectProduct(int u_id) {
		// TODO Auto-generated method stub
		return collectProductDao.queryUserCollectProduct(u_id);
	}

}
