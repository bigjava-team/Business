package org.bigjava.function.queryCategorySecond;

import java.util.ArrayList;
import java.util.List;

public class QueryCategorySecond {

	private List<QueryAllCategorySecond> listCategorySecond = new ArrayList<QueryAllCategorySecond>();

	public List<QueryAllCategorySecond> getListCategorySecond() {
		return listCategorySecond;
	}

	public void setListCategorySecond(List<QueryAllCategorySecond> listCategorySecond) {
		this.listCategorySecond = listCategorySecond;
	}

	@Override
	public String toString() {
		return "QueryCategorySecond [listCategorySecond=" + listCategorySecond + "]";
	}
	
}
