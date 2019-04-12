package org.bigjava.orders.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.bigjava.addr.biz.AddrBiz;
import org.bigjava.addr.entity.Addr;
import org.bigjava.function.FileImageAction;
import org.bigjava.function.Paging;
import org.bigjava.orderitem.biz.OrderItemBiz;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.orders.biz.OrdersBiz;
import org.bigjava.orders.entity.Orders;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

public class OrdersAction {
	
	// ָ���û���
	private User loginUser;
	// ָ�򶩵���
	private Orders orders;
	// ��ӵĶ������id
	private String listId;
	// �޸Ķ��������Ʒ����
	private String subtotals;
	// ��������Ʒ������
	private String listNumber;
	// ���Ʒ�ҳ����
	private Paging paging;
	// �ϴ�ͼƬ�Ĺ�����
	private FileImageAction fileImageAction;
	
	private OrdersBiz ordersBiz;
	private OrderItemBiz orderItemBiz;
	private UserBiz userBiz;
	private AddrBiz addrBiz;
	
	private List<Orders> listOrders;// ����������
	private List<Addr> listAddr;// �û����ջ���ַ
	
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
	
	// ��Ӷ���
	public String addOrders() {
		System.out.println("��ʼ��Ӷ���");
		String[] sId = listId.split(",");
		String[] sNumber = listNumber.split(",");
		String[] orderitem_subtotal = subtotals.split(",");
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String orderNumber = sdf.format(date) + System.currentTimeMillis();// �������
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
	
	// ��ҳ��ѯ�û��Ķ���
	public String queryUserAllOrders() {
		System.out.println("��ʼ��ѯ����");
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		
		int number = ordersBiz.queryAllOrdersNumber(loginUser);// ��ѯ���Ķ�����
		paging = new Paging(paging.getPresentPage(), number, 5);// ��ҳҳ��
		listOrders = ordersBiz.queryAllOrders(paging, loginUser);// ��ѯ���Ķ�������
		return "queryUserAllOrders";
	}
	
	// ͨ������id��ȡ������Ϣ�����и���
	public String idQueryOrdersPayment() {
		orders = ordersBiz.queryOrders_id(orders.getO_id());
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		int number = addrBiz.queryAllAddrNumber(loginUser);
		paging = new Paging(paging.getPresentPage(), number, 5);
		listAddr = addrBiz.queryAllAddr(paging, loginUser);
		return "idQueryOrdersPayment";
	}

}
