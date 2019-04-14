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

	// 收藏商品
	@Override
	public void addCollectProduct(CollectProduct collectProduct) {
		// TODO Auto-generated method stub
		collectProductDao.addCollectProduct(collectProduct);
	}

	// 删除收藏的商品
	@Override
	public void deleteCollectProduct(CollectProduct collectProduct) {
		// TODO Auto-generated method stub
		collectProductDao.deleteCollectProduct(collectProduct);
	}

	// 通过收藏商品的id查询收藏商品的内容
	@Override
	public boolean queryCollectUser_id(int u_id, int p_id) {
		// TODO Auto-generated method stub
		return collectProductDao.queryCollectUser_id(u_id,p_id);
	}

	// 分页查询收藏商品表
	@Override
	public List<CollectProduct> queryCollectProdct_Uid(int u_id, Paging paging) {
		// TODO Auto-generated method stub
		return collectProductDao.queryCollectProdct_Uid(u_id, paging);
	}

	// 查询收藏商品的数量
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
