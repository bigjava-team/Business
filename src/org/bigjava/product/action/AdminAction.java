package org.bigjava.product.action;

import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.IsEmpty;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;

import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {
	
	private IsEmpty isEmpty = new IsEmpty();
	//◊¢»Î…Ã∆∑
	private Product product;
	private ProductBiz productBiz;
	private CategorySecond categorySecond;

	private CategorySecondBiz categorySecondBiz;

}
