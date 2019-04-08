package org.bigjava.productAge.entity;

import java.util.HashSet;
import java.util.Set;

import org.bigjava.image.entity.Images;
import org.bigjava.product.entity.Product;

/**
 * 商品颜色类
 * @author Administrator
 *
 */
public class ProductAge {
	
	private int pAge_id;// 商品颜色id
	private String pAge;// 商品颜色
	
	private Set<Images> setImages = new HashSet<Images>();// 一对多指向商品图片表
	
	public Set<Images> getSetImages() {
		return setImages;
	}
	public void setSetImages(Set<Images> setImages) {
		this.setImages = setImages;
	}
	public int getpAge_id() {
		return pAge_id;
	}
	public void setpAge_id(int pAge_id) {
		this.pAge_id = pAge_id;
	}
	public String getpAge() {
		return pAge;
	}
	public void setpAge(String pAge) {
		this.pAge = pAge;
	}
	@Override
	public String toString() {
		return "ProductAge [pAge_id=" + pAge_id + ", pAge=" + pAge + "]";
	}
}
