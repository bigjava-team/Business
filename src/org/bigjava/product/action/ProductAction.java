package org.bigjava.product.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.bigjava.comment.biz.CommentBiz;
import org.bigjava.comment.entity.Comment;
import org.bigjava.function.FileImageAction;
import org.bigjava.function.IsEmpty;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProductAction extends ActionSupport {
	
	/* 商品 */
	private Product product;
	private User user;
	
	private ProductBiz productBiz;
	private CommentBiz commentBiz;
	
	/* 查询最新的商品 */
	private List<Product> listProductTime;
	/* 查询最热的商品 */
	private List<Product> listProductHot;
	/* 查询推荐的商品  */
	private List<Product> listAllCommentProduct = new ArrayList<Product>();
	private List<Integer> listCommentNumber = new ArrayList<Integer>();
	
	private FileImageAction fileImageAction;
	
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
	
	private String  check;
	
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
		System.out.println("进入首页index");
		/* 查询最新的商品 */
		listProductTime = productBiz.queryProduct_time();
		
		if (listProductTime != null && listProductTime.size()!=0) {
			check = "获取页面值成功";
		}
		
		/* 查询最热的商品 */
		listProductHot = productBiz.queryProduct_hot();
		/* 查询推荐的商品 */
		List<Comment> listComment = commentBiz.queryCommentByNumberOneToTwelve();
		System.out.println("推荐的商品" + listComment);
		
		listAllCommentProduct = productBiz.queryAllCommentProduct();
		System.out.println("所有的商品" + listAllCommentProduct);
		for (int i=0; i<listAllCommentProduct.size(); i++) {
			int commentNumber = 0;
			for (int j=0; j<listComment.size(); j++) {
				if (listAllCommentProduct.get(i).getP_id() == listComment.get(j).getProduct().getP_id()) {
					commentNumber++;
				}
			}
			listCommentNumber.add(commentNumber);
		}
		
		int number = 0;
		List<Product> listProduct = new ArrayList<Product>();
		for (int i=0; i<listCommentNumber.size()-1; i++) {
			for (int j=0; j<listCommentNumber.size()-1-i; j++) {
				if (listCommentNumber.get(j)<listCommentNumber.get(j+1)) {
					listProduct.add(listAllCommentProduct.get(j));
					number = listCommentNumber.get(j);
					
					listAllCommentProduct.set(j, listAllCommentProduct.get(j+1));
					listCommentNumber.set(j, listCommentNumber.get(j+1));
					
					listAllCommentProduct.set(j+1, listProduct.get(0));
					listCommentNumber.set(j+1, number);
				}
			}
			listProduct.clear();
		}
		 	
		return SUCCESS;
	}
	
	

}
