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

	// �����ƷͼƬ
	@Override
	public void addImages(Images images, Product product) {
		// TODO Auto-generated method stub
		imagesDao.addImages(images, product);
	}

	// �޸���ƷͼƬ
	@Override
	public void updateImages(Images images, Images updateImages) {
		// TODO Auto-generated method stub
		imagesDao.updateImages(images, updateImages);
	}

	// ͨ��ͼƬid��ѯͼƬ·��
	@Override
	public Images queryImages_path(int img_id) {
		// TODO Auto-generated method stub
		return imagesDao.queryImages_path(img_id);
	}

	// ɾ��ͼƬ·��
	@Override
	public void deleteImages(Images images) {
		// TODO Auto-generated method stub
		imagesDao.deleteImages(images);
	}
	
	

}
