package org.bigjava.orderitem.action;

import java.util.List;

import org.bigjava.function.FileImageAction;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.orderitem.biz.OrderItemBiz;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

public class OrderItemAction {
	
	// 订单项
	private Orderitem orderitem;
	// 登录的用户内容
	private User loginUser;
	private Product product;
	private Paging paging;
	
	private IsEmpty isEmpty;
	private FileImageAction fileImageAction;
	
	private OrderItemBiz orderItemBiz;
	private UserBiz userBiz;
	private ProductBiz productBiz;
	
	private List<Orderitem> listOrderitem;
	
	public FileImageAction getFileImageAction() {
		return fileImageAction;
	}

	public void setFileImageAction(FileImageAction fileImageAction) {
		this.fileImageAction = fileImageAction;
	}

	public ProductBiz getProductBiz() {
		return productBiz;
	}

	public void setProductBiz(ProductBiz productBiz) {
		this.productBiz = productBiz;
	}

	public UserBiz getUserBiz() {
		return userBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public List<Orderitem> getListOrderitem() {
		return listOrderitem;
	}

	public void setListOrderitem(List<Orderitem> listOrderitem) {
		this.listOrderitem = listOrderitem;
	}

	public Orderitem getOrderitem() {
		return orderitem;
	}

	public void setOrderitem(Orderitem orderitem) {
		this.orderitem = orderitem;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public void setOrderItemBiz(OrderItemBiz orderItemBiz) {
		this.orderItemBiz = orderItemBiz;
	}
	
	// 添加入购物车
	public String addOrderItemAndQueryOrderItem() {
		System.out.println("开始添加进购物车");
		System.out.println(loginUser);
		System.out.println(product);
		System.out.println(orderitem);
		if (loginUser.getUsername() == null || loginUser.getUsername().equals("")) {
			System.out.println("请先登录账户");
			return "loginError";
		}
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		product = productBiz.queryProduct_id(product.getP_id());
		int count = orderitem.getCount(); 
		// 添加用于的外键，商品的外键
		orderitem = new Orderitem(loginUser, product, null);
		// 添加商品的价格
		orderitem.setSubtotal(product.getP_price());
		orderitem.setCount(count);
		// 将数据添加入数据库
		orderItemBiz.addOrderItem(orderitem);
		
		int number = orderItemBiz.queryOrderItemNumber(loginUser);
		paging = new Paging(paging.getPresentPage(), number, 10);
		
		// 查询的订单内容
		listOrderitem = orderItemBiz.queryAllOrderItem(loginUser, paging);
		
		return "addOrderItemAndQueryOrderItem";
	}
	
	// 查看购物车
	public String queryUserOrderitem() {
		if (loginUser.getUsername() == null || loginUser.getUsername().equals("")) {
			System.out.println("请先登录账户");
			return "loginError";
		}
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		int number = orderItemBiz.queryOrderItemNumber(loginUser);
		paging = new Paging(paging.getPresentPage(), number, 10);
		
		// 查询的订单内容
		listOrderitem = orderItemBiz.queryAllOrderItem(loginUser, paging);
		return "queryUserOrderitem";
	}
}
