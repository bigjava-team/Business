package org.bigjava.product.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.merchant.biz.MerchantBiz;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 店鋪对商品的操作，即添加商品，删除商品等
 * 
 * @author Mr.Man
 *
 */
public class MerchantProductAction extends ActionSupport {

	private IsEmpty isEmpty = new IsEmpty();
	private Product product;
	private ProductBiz productBiz;
	private CategorySecond categorySecond;

	private CategorySecondBiz categorySecondBiz;
	private Merchant merchant;
	private MerchantBiz merchantBiz;
	private String searchText; // 搜索的参数值

	private Paging paging;// 声明Paging类

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	public void setMerchantBiz(MerchantBiz merchantBiz) {
		this.merchantBiz = merchantBiz;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	private Map<String, Object> session;// 声明Map数组

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public void setProductBiz(ProductBiz productBiz) {
		this.productBiz = productBiz;
	}

	public void setCategorySecond(CategorySecond categorySecond) {
		this.categorySecond = categorySecond;
	}

	public void setCategorySecondBiz(CategorySecondBiz categorySecondBiz) {
		this.categorySecondBiz = categorySecondBiz;
	}

	// 文件上传需要的三个属性:
//	private File upload;
//	private String uploadFileName;
//	private String uploadContentType;
//
//	public void setUpload(File upload) {
//		this.upload = upload;
//	}
//
//	public void setUploadFileName(String uploadFileName) {
//		this.uploadFileName = uploadFileName;
//	}
//
//	public void setUploadContentType(String uploadContentType) {
//		this.uploadContentType = uploadContentType;
//	}

	// 查询所有的商品
	public String findAll() {

		System.out.println("进入MerchantProductAction....showAll方法");
		session = ActionContext.getContext().getSession();

		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
		}
		// 根据搜索的内容与权限查询可搜索的总条数
		int totalNumber = productBiz.queryProductNumber(searchText);
		// 当前页数
		int presentPage = paging.getPresentPage();
		System.out.println("当前页" + presentPage);

		Paging paging = new Paging(presentPage, totalNumber, 2);

		// 接收搜索到的商品列表
		List<Product> productList = productBiz.queryAllProduct(searchText, paging);

		// 将参数存入session中
		System.out.println(productList);
		session.put("showProduct", productList);
		session.put("paging", paging);
		session.put("searchText", searchText);

		return "findAll";
	}

	// 跳转到添加页面的方法:
	public String addPage() {
		// 查询所有的二级分类:
		List<CategorySecond> csList = categorySecondBiz.showCategorySecond();
		// 将二级分类的数据显示到页面上
		ActionContext.getContext().getValueStack().set("csList", csList);
		// 页面跳转
		return "addPageSuccess";
	}

	// 保存商品的方法:
	public String save() throws IOException {
		// 将提交的数据添加到数据库中.
		product.setP_date(new Date());
		// product.setImage(image);
//		merchant = merchantBiz.queryMerchant(merchant.getM_id());
		categorySecond = categorySecondBiz.queryCategorySecond(categorySecond.getCs_id());
		productBiz.addProduct(product, merchant, categorySecond);
		return "saveSuccess";
	}

}
