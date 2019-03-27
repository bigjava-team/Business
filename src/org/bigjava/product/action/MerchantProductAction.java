package org.bigjava.product.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.FileAction;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.image.biz.ImageBiz;
import org.bigjava.image.entity.Images;
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
	private String searchText; // 搜索的参数值
	
	private FileAction fileAction;// 上传图片的功能类
	
	private ImageBiz imagesBiz;// 调用对商品图片操作的业务逻辑层
	private Images images;// 存放商品图片的类
	
	private List<Product> productList;// 存放对应店铺内的所有商品
	
	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

	public FileAction getFileAction() {
		return fileAction;
	}

	public void setFileAction(FileAction fileAction) {
		this.fileAction = fileAction;
	}

	public Images getImages() {
		return images;
	}

	public void setImages(Images images) {
		this.images = images;
	}

	public ImageBiz getImagesBiz() {
		return imagesBiz;
	}

	public void setImagesBiz(ImageBiz imagesBiz) {
		this.imagesBiz = imagesBiz;
	}

	private Paging paging;// 声明Paging类
	
	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
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

	// 查询所有的商品
	public String findAll() {

		System.out.println("进入MerchantProductAction....showAll方法");
		session = ActionContext.getContext().getSession();

		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
		}
		// 根据搜索的内容与权限查询可搜索的总条数
		int totalNumber = productBiz.queryProductNumber(searchText, merchant.getM_id());
		// 当前页数
		int presentPage = paging.getPresentPage();
		System.out.println("当前页" + presentPage);

		paging = new Paging(presentPage, totalNumber, 2);

		// 接收搜索到的商品列表
		productList = productBiz.queryAllProduct(searchText, paging, merchant.getM_id());

		// 将参数存入session中
		System.out.println(productList);
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
	public String save() {
		// 将提交的数据添加到数据库中.
		product.setP_date(new Date());
		product.setP_freeze(3);
		
		System.out.println("上传图片" + fileAction);
		
		fileAction.image(product.getP_name());
		
		product.setP_image("productImage/" + fileAction.getMyFileFileName());
		
		productBiz.addProduct(product, merchant, categorySecond);// 添加商品信息
		
		return "saveSuccess";
	}

	// 删除商品的方法:
	public String delete() {
		// 根据id查询商品信息
		product = productBiz.queryProduct_id(product.getP_id());
		// 页面跳转
		return "deleteSuccess";
	}

	// 根据ID获取商品信息
	public String getProductById() {
		System.out.println("进入MerchantProductAction...getProductById");
		System.out.println("p_id"+ product.getP_id());
		productBiz.queryProduct_id(product.getP_id());
		return "getProductByIdSuccess";
	}

	// 修改商品的方法
	public String updateProduct() {
		System.out.println("进入MerchantProductAction....updateProduct()");
		//查询数据库中商品的信息
		product = productBiz.queryProduct_id(product.getP_id());
		
		Product updateProduct = null; // 修改的二级分类
		
		productBiz.updateProduct(product, updateProduct);
		return "updateProductSuccess";
	}

}
