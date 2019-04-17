package org.bigjava.product.action;

import java.util.List;
import java.util.Map;

import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.FileImageAction;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {

	private IsEmpty isEmpty = new IsEmpty();
	// 注入商品
	private Product product;
	private ProductBiz productBiz;
	private CategorySecond categorySecond;
	private Merchant merchant;
	private User user;
	
	private FileImageAction fileImageAction;// 图片地址

	private CategorySecondBiz categorySecondBiz;
	private String searchText; // 搜索的参数值
	private Paging paging;// 声明Paging类
	private Map<String, Object> session;// 声明Map数组
	
	private Product updateProduct;
	
	public FileImageAction getFileImageAction() {
		return fileImageAction;
	}

	public void setFileImageAction(FileImageAction fileImageAction) {
		this.fileImageAction = fileImageAction;
	}

	public Product getUpdateProduct() {
		return updateProduct;
	}

	public void setUpdateProduct(Product updateProduct) {
		this.updateProduct = updateProduct;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

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

	public ProductBiz getProductBiz() {
		return productBiz;
	}

	public void setProductBiz(ProductBiz productBiz) {
		this.productBiz = productBiz;
	}

	public CategorySecond getCategorySecond() {
		return categorySecond;
	}

	public void setCategorySecond(CategorySecond categorySecond) {
		this.categorySecond = categorySecond;
	}

	public CategorySecondBiz getCategorySecondBiz() {
		return categorySecondBiz;
	}

	public void setCategorySecondBiz(CategorySecondBiz categorySecondBiz) {
		this.categorySecondBiz = categorySecondBiz;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	private List<Product> productList;// 存放所有商品
	private List<Product> productLists;// 存放所有申请中的商品

	public List<Product> getProductLists() {
		return productLists;
	}

	public void setProductLists(List<Product> productLists) {
		this.productLists = productLists;
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

	// 带分页的查询商品的执行的方法
	public String adminFindAll() {
		System.out.println("AdminAction....adminFindAll().");
		session = ActionContext.getContext().getSession();

		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
		}
		// 根据搜索的内容与权限查询可搜索的总条数
		int totalNumber = productBiz.queryProductNumber(searchText, merchant.getM_id(), product.getP_freeze());

		// 当前页数
		int presentPage = paging.getPresentPage();
		System.out.println("当前页" + presentPage);

		paging = new Paging(presentPage, totalNumber, 5);

		productList = productBiz.queryAllProduct(searchText, paging, merchant.getM_id(), product.getP_freeze());

		// 将参数存入session中
		System.out.println(paging.getPage());
		System.out.println(paging.getPresentPage());
		session.put("paging", paging);
		session.put("searchText", searchText);

		return "adminFindAll";
	}

	// 分页查询申请中的商品
	public String showToProduct() {
		System.out.println("AdminAction....adminFindAll().");
		session = ActionContext.getContext().getSession();

		int u_root = 0;
		System.out.println(user);
		System.out.println(user.getRoot());
		if (user.getRoot() != 0) {
			u_root = user.getRoot();
		}

		System.out.println("用户权限为：" + u_root);
		System.out.println("搜索的值" + searchText);

		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
		}
		// 根据搜索的内容与商品的状态查询可搜索的总条数
		int totalNumber = productBiz.queryProductNumber(searchText, 0, 3);

		System.out.println("申请中的商品种数"+totalNumber);
		// 当前页数
		int presentPage = paging.getPresentPage();
		System.out.println("当前页" + presentPage);

		paging = new Paging(presentPage, totalNumber, 5);

		productLists = productBiz.queryAllProduct(searchText, paging, 0,3);

		// 将参数存入session中
		System.out.println(productLists);
		session.put("paging", paging);
		session.put("searchText", searchText);

		return "showToProduct";
	}

	/**
	 * 下架商品
	 * 更改商品的状态将上架1改为下架2
	 * */ 
	public String adminDeleteProduct() {
		System.out.println("进入adminAction....adminDeleteProduct()");
		product = productBiz.queryProduct_id(updateProduct.getP_id());
		System.out.println("product" + product);
		System.out.println("agreeProduct>>>" + product);
		updateProduct.setP_freeze(2);
		productBiz.updateProduct(product, updateProduct);
		return "adminDeleteProduct";
	}

	// 查看商品信息
	public String getProductById() {
		System.out.println("进入adminAction....getProductById()");
		product = productBiz.queryProduct_id(product.getP_id());
		System.out.println("product" + product);
		ActionContext.getContext().getSession().put("product", product);
		return "getProductSuccess";
	}
	
	/**
	 * 同意商品申请
	 * 修改商品的申请状态将申请3改为上架1
	 * */
	public String agreeProduct() {
		System.out.println("进入adminAction....agreeProduct()");
		product = productBiz.queryProduct_id(updateProduct.getP_id());
		System.out.println("agreeProduct>>>" + product);
		updateProduct.setP_freeze(1);
		productBiz.updateProduct(product, updateProduct);
		return "agreeProduct";
	}

}
