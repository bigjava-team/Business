package org.bigjava.function;

import java.util.ArrayList;
import java.util.List;

import org.bigjava.category.entity.Category;

public class QueryAllCategory {

	private List<Category> listCategory = new ArrayList<Category>();

	public List<Category> getListCategory() {
		return listCategory;
	}

	public void setListCategory(List<Category> listCategory) {
		this.listCategory = listCategory;
	}

	@Override
	public String toString() {
		return "QueryAllCategory [listCategory=" + listCategory + "]";
	}
	
}
