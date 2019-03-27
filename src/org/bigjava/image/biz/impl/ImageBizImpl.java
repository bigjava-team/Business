package org.bigjava.image.biz.impl;

import org.bigjava.image.biz.ImageBiz;
import org.bigjava.image.dao.ImageDao;
import org.bigjava.image.entity.Images;
import org.bigjava.product.entity.Product;

public class ImageBizImpl implements ImageBiz {
	
	private ImageDao imagesDao;
	
	public ImageDao getImagesDao() {
		return imagesDao;
	}

	public void setImagesDao(ImageDao imagesDao) {
		this.imagesDao = imagesDao;
	}

	// 添加商品图片
	@Override
	public void addImages(Images images, Product product) {
		// TODO Auto-generated method stub
		imagesDao.addImages(images, product);
	}

	// 修改商品图片
	@Override
	public void updateImages(Images images, Images updateImages) {
		// TODO Auto-generated method stub
		imagesDao.updateImages(images, updateImages);
	}

	// 通过图片id查询图片路径
	@Override
	public Images queryImages_path(int img_id) {
		// TODO Auto-generated method stub
		return imagesDao.queryImages_path(img_id);
	}

	// 删除图片路径
	@Override
	public void deleteImages(Images images) {
		// TODO Auto-generated method stub
		imagesDao.deleteImages(images);
	}
	
	

}
