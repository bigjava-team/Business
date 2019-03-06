package org.bigjava.entity.categorysecond;

import java.util.HashSet;
import java.util.Set;

import org.bigjava.entity.category.Category;
import org.bigjava.entity.product.Product;

/**
 * 二级分类表
 * @author Administrator
 *
 */
public class CategorySecond {
	
	private int cs_id;// 二级分类id;
	private String cs_name;// 二级分类名
	
	private Category category;// 指向一级分类一方
	
	private Set<Product> setProduct = new HashSet<Product>();// 指向多的一方(商品)

	public int getCs_id() {
		return cs_id;
	}

	public void setCs_id(int cs_id) {
		this.cs_id = cs_id;
	}

	public String getCs_name() {
		return cs_name;
	}

	public void setCs_name(String cs_name) {
		this.cs_name = cs_name;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Set<Product> getSetProduct() {
		return setProduct;
	}

	public void setSetProduct(Set<Product> setProduct) {
		this.setProduct = setProduct;
	}
	
}
