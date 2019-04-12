package org.bigjava.function.queryCategorySecond;

import java.util.ArrayList;
import java.util.List;

import org.bigjava.categorysecond.entity.CategorySecond;

public class QueryAllCategorySecond {
	
	private List<CategorySecond> listCategorySecond = new ArrayList<CategorySecond>();

	public List<CategorySecond> getListCategorySecond() {
		return listCategorySecond;
	}

	public void setListCategorySecond(List<CategorySecond> listCategorySecond) {
		this.listCategorySecond = listCategorySecond;
	}

	@Override
	public String toString() {
		return "QueryAllCategorySecond [listCategorySecond=" + listCategorySecond + "]";
	}
}
