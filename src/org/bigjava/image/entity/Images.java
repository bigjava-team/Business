package org.bigjava.image.entity;

import org.bigjava.product.entity.Product;
import org.bigjava.productAge.entity.ProductAge;

public class Images {
	private int img_id;// 图片id
	private String img_path;// 图片

	private Product product;// 多对一指向商品类
	
	private ProductAge productAge;// 多对一指向商品颜色表
	
	public ProductAge getProductAge() {
		return productAge;
	}

	public void setProductAge(ProductAge productAge) {
		this.productAge = productAge;
	}

	public int getImg_id() {
		return img_id;
	}

	public void setImg_id(int img_id) {
		this.img_id = img_id;
	}

	public String getImg_path() {
		return img_path;
	}

	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
