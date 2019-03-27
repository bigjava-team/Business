package org.bigjava.image.biz;

import org.bigjava.image.entity.Images;
import org.bigjava.product.entity.Product;

public interface ImageBiz {
	
	/**
	 * 添加商品图片
	 */
	public void addImages(Images images, Product product);
	
	/**
	 * 修改商品图片
	 */
	public void updateImages(Images images, Images updateImages);
	
	/**
	 * 通过图片id查询图片路径
	 */
	public Images queryImages_path(int img_id);
	
	/**
	 * 删除图片路径
	 */
	public void deleteImages(Images images);

}
