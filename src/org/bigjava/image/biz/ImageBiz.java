package org.bigjava.image.biz;

import org.bigjava.image.entity.Images;
import org.bigjava.product.entity.Product;

public interface ImageBiz {
	
	/**
	 * �����ƷͼƬ
	 */
	public void addImages(Images images, Product product);
	
	/**
	 * �޸���ƷͼƬ
	 */
	public void updateImages(Images images, Images updateImages);
	
	/**
	 * ͨ��ͼƬid��ѯͼƬ·��
	 */
	public Images queryImages_path(int img_id);
	
	/**
	 * ɾ��ͼƬ·��
	 */
	public void deleteImages(Images images);

}
