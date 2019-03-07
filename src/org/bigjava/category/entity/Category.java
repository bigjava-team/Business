package org.bigjava.category.entity;

import java.util.HashSet;
import java.util.Set;

import org.bigjava.categorysecond.entity.CategorySecond;

/**
 * 一级分类表
 * @author Administrator
 *
 */
public class Category {
	
	private int c_id;// 一级分类id
	private String c_name;// 一级分类名
	
	private Set<CategorySecond> setCS = new HashSet<CategorySecond>();// 指向二级分类的一方
	
	public Set<CategorySecond> getSetCS() {
		return setCS;
	}
	public void setSetCS(Set<CategorySecond> setCS) {
		this.setCS = setCS;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	@Override
	public String toString() {
		return "Category [c_id=" + c_id + ", c_name=" + c_name + "]";
	}
}
