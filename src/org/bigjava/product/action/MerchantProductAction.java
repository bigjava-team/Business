package org.bigjava.product.action;

import java.util.List;
import java.util.Map;

import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
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
	private CategorySecondBiz categorySecondBiz;
	private String searchText; // 搜索的参数值

	private Paging paging;// 声明Paging类

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

	public void setCategorySecondBiz(CategorySecondBiz categorySecondBiz) {
		this.categorySecondBiz = categorySecondBiz;
	}

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

		// 接收搜索到的用户列表
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
//		List<CategorySecond> csList = categorySecondBiz.showAllCategorySecond();
		// 将二级分类的数据显示到页面上
//		ActionContext.getContext().getValueStack().set("csList", csList);
		// 页面跳转
		return "addPageSuccess";
	}

}
