package org.bigjava.image.dao.impl;

import org.bigjava.image.dao.ImageDao;
import org.bigjava.image.entity.Images;
import org.bigjava.product.entity.Product;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class ImageDaoImpl extends HibernateDaoSupport implements ImageDao {

	// 添加商品图片
	@Override
	public void addImages(Images images, Product product) {
		// TODO Auto-generated method stub
		System.out.println("开始执行addImages方法");
		
		images.setProduct(product);// 添加图片表连接商品表的外键属性
		
		this.getHibernateTemplate().save(images);// 将图片内容存储在数据库
	}

	// 修改商品图片
	@Override
	public void updateImages(Images images, Images updateImages) {
		// TODO Auto-generated method stub
		System.out.println("开始执行updateImages方法");
		
		if (updateImages.getImg_path() == null || updateImages.getImg_path().equals("")) {
			
		} else {
			images.setImg_path(updateImages.getImg_path());
		}
	}

	// 通过图片id查询图片路径
	@Override
	public Images queryImages_path(int img_id) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryImages_path方法");
		return this.getHibernateTemplate().get(Images.class, img_id);// 通过图片id查询图片内容
	}

	// 删除图片路径
	@Override
	public void deleteImages(Images images) {
		// TODO Auto-generated method stub
		System.out.println("开始执行 deleteImages方法");
		this.getHibernateTemplate().delete(images);// 删除数据库中的图片路径
	}

}
