package org.bigjava.collectProduct.dao;

import java.util.List;

import org.bigjava.collectProduct.entity.CollectProduct;
import org.bigjava.function.Paging;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

public interface CollectProductDao {
	
	/**
	 * 收藏商品
	 * collectProduct为收藏商品的内容
	 * user为连接User的外键
	 * product为连接Product的外键
	 * 
	 */
	public void addCollectProduct(CollectProduct collectProduct, User user, Product product);
	
	/**
	 * 删除收藏的商品
	 * collectProduct为收藏的商品信息
	 */
	public void deleteCollectProduct(CollectProduct collectProduct);
	
	/**
	 * 通过收藏商品的id查询收藏商品的内容
	 * CP_id为收商品的主键id
	 * 
	 */
	public CollectProduct queryCollectProduct_id(int CP_id);
	
	/**
	 * 分页查询收藏商品表
	 */
	public List<CollectProduct> queryCollectProdct_Uid(int u_id, Paging paging);
	
	/**
	 * 查询用户收藏的商品数
	 */
	public int queryCollectProduct_number(int u_id);

}
