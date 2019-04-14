package org.bigjava.function.queryCategorySecond;

import java.util.List;

import org.bigjava.product.entity.Product;

public class QueryListProduct {
	
	private List<Product> listProduct;

	public List<Product> getListProduct() {
		return listProduct;
	}

	public void setListProduct(List<Product> listProduct) {
		this.listProduct = listProduct;
	}

	@Override
	public String toString() {
		return "QueryListProduct [listProduct=" + listProduct + "]";
	}
}
