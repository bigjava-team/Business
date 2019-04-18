package org.bigjava.orders.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Formatter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.bigjava.addr.biz.AddrBiz;
import org.bigjava.addr.entity.Addr;
import org.bigjava.function.FileImageAction;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.orderitem.biz.OrderItemBiz;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.orders.biz.OrdersBiz;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

public class OrdersAction {
	
	// 指向登录用户类
	private User loginUser;
	// 指向订单类
	private Orders orders;
	// 添加的订单项的id
	private String listId;
	// 修改订单项的商品数量
	private String subtotals;
	// 订单审商品的数量
	private String listNumber;
	// 控制分页的类
	private Paging paging;
	// 上传图片的功能类
	private FileImageAction fileImageAction;
	// 模糊搜索的值
	private String searchText;
	// 商品类
	private Product product;
	// 订单项类
	private Orderitem orderitem;
	// 收货地址类
	private Addr addr;
	// 异步校验
	private IsEmpty isEmpty;
	
	private OrdersBiz ordersBiz;
	private OrderItemBiz orderItemBiz;
	private UserBiz userBiz;
	private AddrBiz addrBiz;
	private ProductBiz productBiz;
	
	private List<Orders> listOrders;// 订单表内容
	private List<Addr> listAddr;// 用户的收货地址
	
	private String buy;// 判定为立即购买
	
	public IsEmpty getIsEmpty() {
		return isEmpty;
	}

	public void setIsEmpty(IsEmpty isEmpty) {
		this.isEmpty = isEmpty;
	}

	public Addr getAddr() {
		return addr;
	}

	public void setAddr(Addr addr) {
		this.addr = addr;
	}

	public String getBuy() {
		return buy;
	}

	public void setBuy(String buy) {
		this.buy = buy;
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

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public List<Addr> getListAddr() {
		return listAddr;
	}

	public void setListAddr(List<Addr> listAddr) {
		this.listAddr = listAddr;
	}

	public void setAddrBiz(AddrBiz addrBiz) {
		this.addrBiz = addrBiz;
	}

	public FileImageAction getFileImageAction() {
		return fileImageAction;
	}

	public void setFileImageAction(FileImageAction fileImageAction) {
		this.fileImageAction = fileImageAction;
	}

	public String getSubtotals() {
		return subtotals;
	}

	public void setSubtotals(String subtotals) {
		this.subtotals = subtotals;
	}

	public void setOrderItemBiz(OrderItemBiz orderItemBiz) {
		this.orderItemBiz = orderItemBiz;
	}

	public List<Orders> getListOrders() {
		return listOrders;
	}

	public void setListOrders(List<Orders> listOrders) {
		this.listOrders = listOrders;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public String getListNumber() {
		return listNumber;
	}

	public void setListNumber(String listNumber) {
		this.listNumber = listNumber;
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

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	
	public String getListId() {
		return listId;
	}

	public void setListId(String listId) {
		this.listId = listId;
	}

	public void setOrdersBiz(OrdersBiz ordersBiz) {
		this.ordersBiz = ordersBiz;
	}
	
	// 添加订单
	public String addOrders() {
		System.out.println("开始添加订单");
		String[] sId = listId.split(",");
		String[] sNumber = listNumber.split(",");
		String[] orderitem_subtotal = subtotals.split(",");
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String orderNumber = sdf.format(date) + System.currentTimeMillis();// 订单编号
		orders.setOrderNumber(orderNumber);
		orders.setOrdertime(new Date());
		orders.setState(1);
		
		ordersBiz.addOrders(orders, loginUser, null);
		
		orders = ordersBiz.orderNumberQueryOrders(orderNumber);
		List<Orderitem> listOrderitem = new ArrayList<Orderitem>();
		for (int i=0; i<sId.length; i++) {
			int sIds = Integer.parseInt(sId[i]);
			int count = Integer.parseInt(sNumber[i]);
			double subtotal = Double.parseDouble(orderitem_subtotal[i]);
			Orderitem orderitem = orderItemBiz.queryOrderItem_id(sIds);
			orderitem.setCount(count);
			orderitem.setSubtotal(subtotal);
			listOrderitem.add(orderitem);
		}
		orderItemBiz.addOrders_id(listOrderitem, orders);
		
		int number = addrBiz.queryAllAddrNumber(loginUser);
		paging = new Paging(paging.getPresentPage(), number, 5);
		listAddr = addrBiz.queryAllAddr(paging, loginUser);
		return "addOrders";
	}
	
	// 分页查询用户的订单
	public String queryUserAllOrders() {
		System.out.println("开始查询订单");
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		
		int number = ordersBiz.queryAllOrdersNumber(loginUser);// 查询到的订单数
		paging = new Paging(paging.getPresentPage(), number, 5);// 分页页面
		listOrders = ordersBiz.queryAllOrders(paging, loginUser);// 查询到的订单内容
		return "queryUserAllOrders";
	}
	
	// 通过订单id获取订单信息，进行付款
	public String idQueryOrdersPayment() {
		buy = "";
		orders = ordersBiz.queryOrders_id(orders.getO_id());
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		int number = addrBiz.queryAllAddrNumber(loginUser);
		paging = new Paging(paging.getPresentPage(), number, 5);
		listAddr = addrBiz.queryAllAddr(paging, loginUser);
		return "idQueryOrdersPayment";
	}
	
	
	// 立即购买
	public String goBuy() throws ParseException {
		System.out.println("立即购买");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String orderNumber = sdf.format(date) + System.currentTimeMillis();// 订单编号
		
		orders = new Orders(0, orderNumber, 0, new Date(), 0);
		
		product = productBiz.queryProduct_id(product.getP_id());
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		orders.setUser(loginUser);
		
		// 订单项的内容
		orderitem = new Orderitem(loginUser, product, null);
		orderitem.setCount(1);
		orderitem.setSubtotal(product.getP_price()*orderitem.getCount());
		Set<Orderitem> setOrderItem = new HashSet<Orderitem>();
		setOrderItem.add(orderitem);
		// 订单的内容
		orders.setSetOrderItem(setOrderItem);
		orders.setTotal(orderitem.getSubtotal());
		
		int number = addrBiz.queryAllAddrNumber(loginUser);
		paging = new Paging(paging.getPresentPage(), number, 5);
		listAddr = addrBiz.queryAllAddr(paging, loginUser);
		
		buy = "立即购买";
		return "goBuy";
	}
	
	// 立即购买添加至订单项、订单
	public String addOrderitemOrders() {
		System.out.println("订单"+orders);
		System.out.println("用户"+loginUser);
		System.out.println("收货地址"+addr);
		System.out.println("订单项"+orderitem);
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		orderitem.setProduct(product);// 连接商品类
		orderitem.setUser(loginUser);// 连接用户类
		orderItemBiz.addOrderItem(orderitem);
		
		orders.setState(2);// 支付状态
		ordersBiz.addOrders(orders, loginUser, addr);// 添加订单
		
		orders = ordersBiz.orderNumberQueryOrders(orders.getOrderNumber());
		
		return "addOrderitemOrders";
	}
}
