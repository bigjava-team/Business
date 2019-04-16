package org.bigjava.orders.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.bigjava.addr.biz.AddrBiz;
import org.bigjava.addr.entity.Addr;
import org.bigjava.function.FileImageAction;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.orderitem.biz.OrderItemBiz;
import org.bigjava.orders.biz.OrdersBiz;
import org.bigjava.orders.entity.Orders;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminOrdersAction extends ActionSupport {

	private IsEmpty isEmpty = new IsEmpty();
	// 指向用户类
	private User user;
	// 指向登录的用户
	private User loginUser;
	// 指向订单类
	private Orders orders;
	// 订单审商品的数量
	private String listNumber;
	// 控制分页的类
	private Paging paging;
	private String searchText; // 搜索的参数值
	private OrdersBiz ordersBiz;
	private UserBiz userBiz;

	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public UserBiz getUserBiz() {
		return userBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	private List<Orders> listOrders;// 订单表内容
	private Map<String, Object> session;// 声明Map数组

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public void setOrdersBiz(OrdersBiz ordersBiz) {
		this.ordersBiz = ordersBiz;
	}

	public String showAllOrders() {
		System.out.println("AdminAction....adminFindAll().");
		listOrders = new ArrayList();
		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
			loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
			int totalNumber = ordersBiz.queryAllOrdersNumber(loginUser);
			
			paging = new Paging(paging.getPresentPage(), totalNumber, 5);
	
			listOrders = ordersBiz.queryAllOrders(paging, loginUser);
			return "showAllOrders";
		}
		List<User> listUser = userBiz.likeQueryListUser(searchText);
		for (int i=0; i<listUser.size(); i++) {
			// 根据搜索的内容与权限查询可搜索的总条数
			int totalNumber = ordersBiz.queryAllOrdersNumber(listUser.get(i));
			if (totalNumber==0) {
				continue;
			}
	
			paging = new Paging(paging.getPresentPage(), totalNumber, 5);
	
			List<Orders> listOrders2 = ordersBiz.queryAllOrders(paging, listUser.get(i));
			System.out.println(listOrders2);
			for (int j=0; j<listOrders2.size(); j++) {
				listOrders.add(listOrders2.get(j));
			}
		}
		System.out.println(listOrders);
		return "showAllOrders";
	}

}
