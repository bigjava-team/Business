package org.bigjava.productAge.entity;

import java.util.HashSet;
import java.util.Set;

import org.bigjava.image.entity.Images;
import org.bigjava.product.entity.Product;

/**
 * ��Ʒ��ɫ��
 * @author Administrator
 *
 */
public class ProductAge {
	
	private int pAge_id;// ��Ʒ��ɫid
	private String pAge;// ��Ʒ��ɫ
	
	private Set<Images> setImages = new HashSet<Images>();// һ�Զ�ָ����ƷͼƬ��
	
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
