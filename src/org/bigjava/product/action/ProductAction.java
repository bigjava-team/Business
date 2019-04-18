package org.bigjava.product.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.bigjava.category.biz.CategoryBiz;
import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.comment.biz.CommentBiz;
import org.bigjava.comment.entity.Comment;
import org.bigjava.function.FileImageAction;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.function.QueryAllCategory;
import org.bigjava.function.queryCategorySecond.QueryAllCategorySecond;
import org.bigjava.function.queryCategorySecond.QueryCategorySecond;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProductAction extends ActionSupport {

	/* 商品 */
	private Product product;
	// 用户信息
	private User user;
	// 登录用户的信息
	private User loginUser;
	// 店铺
	private Merchant merchant;
	// 评论
	private Comment comment;
	private int commentNumber;
	// 分页类
	private Paging paging;
	// 一级分类
	private Category category;
	// 二级分类
	private CategorySecond categorySecond;

	private String searchText;// 搜索的值

	private UserBiz userBiz;
	private ProductBiz productBiz;
	private CommentBiz commentBiz;
	private CategoryBiz categoryBiz;// 一级分类
	private CategorySecondBiz categorySecondBiz;// 二级分类
	
	/* 查询最新的商品 */
	private List<Product> listProductTime;
	/* 查询最热的商品 */
	private List<Product> listProductHot;
	/* 查询推荐的商品 */
	private List<Product> listAllCommentProduct = new ArrayList<Product>();
	/* 查询首页的推荐商品 */
	private List<Integer> listCommentNumber = new ArrayList<Integer>();
	/* 查询首页的一级分类 */
	private List<QueryAllCategory> listIndexCategory = new ArrayList<QueryAllCategory>();
	/* 查询首页的二级分类 */
	private List<QueryCategorySecond> listCS = new ArrayList<QueryCategorySecond>();
	/* 查询二级分类中推荐的商品 */
	private List<Product> listAllLikeProduct = new ArrayList<Product>();
	// 查询出一级分类的商品
	private List<Product> listCategoryProduct;
	// 查询出二级分类的商品
	private List<Product> listCategorySecondProduct;
	
	// 查询出的二级分类
	private List<CategorySecond> listCategorySecond;

	private FileImageAction fileImageAction;
	
	public List<CategorySecond> getListCategorySecond() {
		return listCategorySecond;
	}

	public void setListCategorySecond(List<CategorySecond> listCategorySecond) {
		this.listCategorySecond = listCategorySecond;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public List<Product> getListCategoryProduct() {
		return listCategoryProduct;
	}

	public void setListCategoryProduct(List<Product> listCategoryProduct) {
		this.listCategoryProduct = listCategoryProduct;
	}

	public List<Product> getListCategorySecondProduct() {
		return listCategorySecondProduct;
	}

	public void setListCategorySecondProduct(List<Product> listCategorySecondProduct) {
		this.listCategorySecondProduct = listCategorySecondProduct;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public CategorySecond getCategorySecond() {
		return categorySecond;
	}

	public void setCategorySecond(CategorySecond categorySecond) {
		this.categorySecond = categorySecond;
	}

	public List<Product> getListAllLikeProduct() {
		return listAllLikeProduct;
	}

	public void setListAllLikeProduct(List<Product> listAllLikeProduct) {
		this.listAllLikeProduct = listAllLikeProduct;
	}

	// 查询商品对应的评论
	private List<Comment> listProductAllComment = new ArrayList<Comment>();

	public List<QueryCategorySecond> getListCS() {
		return listCS;
	}

	public void setListCS(List<QueryCategorySecond> listCS) {
		this.listCS = listCS;
	}

	public CategorySecondBiz getCategorySecondBiz() {
		return categorySecondBiz;
	}

	public void setCategorySecondBiz(CategorySecondBiz categorySecondBiz) {
		this.categorySecondBiz = categorySecondBiz;
	}

	public List<QueryAllCategory> getListIndexCategory() {
		return listIndexCategory;
	}

	public void setListIndexCategory(List<QueryAllCategory> listIndexCategory) {
		this.listIndexCategory = listIndexCategory;
	}

	public CategoryBiz getCategoryBiz() {
		return categoryBiz;
	}

	public void setCategoryBiz(CategoryBiz categoryBiz) {
		this.categoryBiz = categoryBiz;
	}

	public int getCommentNumber() {
		return commentNumber;
	}

	public void setCommentNumber(int commentNumber) {
		this.commentNumber = commentNumber;
	}

	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public List<Comment> getListProductAllComment() {
		return listProductAllComment;
	}

	public void setListProductAllComment(List<Comment> listProductAllComment) {
		this.listProductAllComment = listProductAllComment;
	}

	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Product> getListAllCommentProduct() {
		return listAllCommentProduct;
	}

	public void setListAllCommentProduct(List<Product> listAllCommentProduct) {
		this.listAllCommentProduct = listAllCommentProduct;
	}

	public List<Integer> getListCommentNumber() {
		return listCommentNumber;
	}

	public void setListCommentNumber(List<Integer> listCommentNumber) {
		this.listCommentNumber = listCommentNumber;
	}

	public CommentBiz getCommentBiz() {
		return commentBiz;
	}

	public void setCommentBiz(CommentBiz commentBiz) {
		this.commentBiz = commentBiz;
	}

	public List<Product> getListProductHot() {
		return listProductHot;
	}

	public void setListProductHot(List<Product> listProductHot) {
		this.listProductHot = listProductHot;
	}

	/* 异步校验 */
	private IsEmpty isEmpty = new IsEmpty();

	private String check;

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public FileImageAction getFileImageAction() {
		return fileImageAction;
	}

	public void setFileImageAction(FileImageAction fileImageAction) {
		this.fileImageAction = fileImageAction;
	}

	public List<Product> getListProductTime() {
		return listProductTime;
	}

	public void setListProductTime(List<Product> listProductTime) {
		this.listProductTime = listProductTime;
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

	public String showAll() {
		System.out.println("进入首页index" + loginUser);
		if (loginUser!=null) {
			loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		}
		/* 查询最新的商品 */
		listProductTime = productBiz.queryProduct_time();
		listProductTime = listProductTime.subList(0, 6);

		if (listProductTime != null && listProductTime.size() != 0) {
			check = "获取页面值成功";
		}

		/* 查询最热的商品 */
		listProductHot = productBiz.queryProduct_hot();
		listProductHot = listProductHot.subList(0, 6);
		/* 查询推荐的商品 */
		List<Comment> listComment = commentBiz.queryCommentByNumberOneToTwelve();
		System.out.println("推荐的商品" + listComment);

		listAllCommentProduct = productBiz.queryAllCommentProduct();
		System.out.println("所有的商品" + listAllCommentProduct);
		for (int i = 0; i < listAllCommentProduct.size(); i++) {
			int commentNumber = 0;
			for (int j = 0; j < listComment.size(); j++) {
				if (listAllCommentProduct.get(i).getP_id() == listComment.get(j).getProduct().getP_id()) {
					commentNumber++;
				}
			}
			listCommentNumber.add(commentNumber);
		}

		int number = 0;
		List<Product> listProduct = new ArrayList<Product>();
		for (int i = 0; i < listCommentNumber.size() - 1; i++) {
			for (int j = 0; j < listCommentNumber.size() - 1 - i; j++) {
				if (listCommentNumber.get(j) < listCommentNumber.get(j + 1)) {
					listProduct.add(listAllCommentProduct.get(j));
					number = listCommentNumber.get(j);

					listAllCommentProduct.set(j, listAllCommentProduct.get(j + 1));
					listCommentNumber.set(j, listCommentNumber.get(j + 1));

					listAllCommentProduct.set(j + 1, listProduct.get(0));
					listCommentNumber.set(j + 1, number);
				}
			}
			listProduct.clear();
		}
		listCommentNumber = listCommentNumber.subList(0, 12);
		listAllCommentProduct = listAllCommentProduct.subList(0, 12);

		System.out.println("----------------------------------------------------");

		// 查询全部的一级分类
		List<Category> listCategory = categoryBiz.showAllCategory();
		List<Category> listCategorys = null;
		int numbers = listCategory.size() / 3;
		int remaining = listCategory.size() % 3;
		for (int i = 1; i < numbers + 1; i++) {
			QueryAllCategory queryCategory = new QueryAllCategory();
			listCategorys = listCategory.subList((i - 1) * 3, i * 3);
			queryCategory.setListCategory(listCategorys);
			listIndexCategory.add(queryCategory);
			if (remaining != 0) {
				if (i == numbers) {
					QueryAllCategory queryCategorys = new QueryAllCategory();
					listCategorys = listCategory.subList(i * 3, i * 3 + remaining);
					queryCategorys.setListCategory(listCategorys);
					listIndexCategory.add(queryCategorys);
				}
			}
		}
		System.out.println(listCategorys.size());

		// 查询二级分类
		List<QueryAllCategorySecond> listCategorySecond = categorySecondBiz.showCategorySecond();
		List<QueryAllCategorySecond> listCategorySeconds = null;
		int categorySecondNumber = listCategorySecond.size() / 3;
		int categorySecondRemaining = listCategorySecond.size() % 3;
		for (int i = 1; i < categorySecondNumber + 1; i++) {
			listCategorySeconds = listCategorySecond.subList((i - 1) * 3, i * 3);
			QueryCategorySecond queryCS = new QueryCategorySecond();
			queryCS.setListCategorySecond(listCategorySeconds);
			listCS.add(queryCS);
			if (categorySecondRemaining != 0) {
				if (i == categorySecondNumber) {
					QueryCategorySecond queryCS2 = new QueryCategorySecond();
					listCategorySeconds = listCategorySecond.subList(i * 3, i * 3 + categorySecondRemaining);
					queryCS2.setListCategorySecond(listCategorySeconds);
					listCS.add(queryCS2);
				}
			}
		}

		// 查询二级分类中的猜你喜欢
		listAllLikeProduct = listAllCommentProduct.subList(0, 6);
		System.out.println(listCS.size());
		return SUCCESS;
	}

	// 商品详情页面
	public String idQueryProduct() {
		System.out.println("进入商品详情");
		product = productBiz.queryProduct_id(product.getP_id());
		merchant = product.getMerchant();
		user = merchant.getUser();

		// 查询店铺中最新的商品
		listProductTime = productBiz.queryMerchantProduct_time(merchant.getM_id());
		listProductTime = listProductTime.subList(0, 2);

		// 查询店铺中最热的商品
		listProductHot = productBiz.queryMerchantProduct_hot(merchant.getM_id());
		listProductHot = listProductHot.subList(0, 2);

		// 查询商品对应的评论
		listProductAllComment = commentBiz.queryProductCommentNumber(product.getP_id(), paging.getPresentPage());
		commentNumber = listProductAllComment.size();
		return "idQueryProduct";
	}

	// 通过一级分类查询商品
	public String queryAllCategory() {
		System.out.println("通过一级分类查询商品");
		listCategoryProduct = categoryBiz.queryC_idCategoryProduct(category.getC_id(), paging.getPresentPage());
		category = categoryBiz.queryCategoryById(category.getC_id());
		
		listCategorySecond = categorySecondBiz.cIdQueryCategorySecond(category.getC_id());
		if (listCategoryProduct == null) {
			System.out.println("没有此类审商品");
		}
		return "queryAllCategory";
	}

	// 通过二级分类查询商品
	public String cs_idQueryAllCategorySecond() {
		System.out.println("通过二级分类查询商品");
		listCategoryProduct = categorySecondBiz.cs_idQueryAllCategorySecondProduct(categorySecond.getCs_id(),
				paging.getPresentPage());
		CategorySecond categorySeconds = categorySecondBiz.queryCategorySecond(categorySecond.getCs_id());
		
		category = categoryBiz.queryCategoryById(categorySeconds.getCategory().getC_id());
		listCategorySecond = categorySecondBiz.cIdQueryCategorySecond(category.getC_id());
		return "cs_idQueryAllCategorySecond";
	}

	// 通过搜索的值查询商品
	public String searchTextQueryProduct() {
		System.out.println("模糊搜索商品");
		listCategoryProduct = categorySecondBiz.searchTextQueryProduct(searchText, paging.getPresentPage());
		return "searchTextQueryProduct";
	}

}
