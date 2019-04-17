
package org.bigjava.orders.action;

import java.util.List;

import org.bigjava.addr.entity.Addr;
import org.bigjava.function.Alipay;
import org.bigjava.orderitem.biz.OrderItemBiz;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.orders.biz.OrdersBiz;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PaymentOrders extends ActionSupport {
	
	private String out_trade_no;// ������
	private String total_amount;// ������
	private String subject;// ��������
	private String result;// ��������
	
	private OrdersBiz ordersBiz;
	private ProductBiz productBiz;
	private OrderItemBiz orderItemBiz;
	
	private Orders orders;// ����
	
	private Addr addr;// �ջ���ַ
	private User loginUser;
	
	public void setOrderItemBiz(OrderItemBiz orderItemBiz) {
		this.orderItemBiz = orderItemBiz;
	}
	public void setProductBiz(ProductBiz productBiz) {
		this.productBiz = productBiz;
	}
	public User getLoginUser() {
		return loginUser;
	}
	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}
	public Addr getAddr() {
		return addr;
	}
	public void setAddr(Addr addr) {
		this.addr = addr;
	}
	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	public OrdersBiz getOrdersBiz() {
		return ordersBiz;
	}
	public void setOrdersBiz(OrdersBiz ordersBiz) {
		this.ordersBiz = ordersBiz;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getOut_trade_no() {
		return out_trade_no;
	}
	public void setOut_trade_no(String out_trade_no) {
		this.out_trade_no = out_trade_no;
	}
	public String getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(String total_amount) {
		this.total_amount = total_amount;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}

	// ֧������
	public String payOrders() throws AlipayApiException {
		System.out.println("��ʼ����"+loginUser);
		ActionContext.getContext().getSession().put("loginUser", loginUser);	
		Alipay.return_url = "http://localhost:8080/Business/orders_queryUserAllOrders?method=post&loginUser.username="+loginUser.getUsername()+"&paging.presenetPage=0";
		//��ó�ʼ����AlipayClient
		AlipayClient alipayClient = new DefaultAlipayClient(Alipay.gatewayUrl, Alipay.app_id, Alipay.merchant_private_key, "json", Alipay.charset, Alipay.alipay_public_key, Alipay.sign_type);
		
		//�����������
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(Alipay.return_url);
		alipayRequest.setNotifyUrl(Alipay.notify_url);
		
		alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
				+ "\"total_amount\":\""+ total_amount +"\"," 
				+ "\"subject\":\""+ subject +"\"," 
				+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
		
		result = alipayClient.pageExecute(alipayRequest).getBody();// ����ҳ�������
		
		orders = ordersBiz.orderNumberQueryOrders(out_trade_no);
		orders.setState(2);
		orders.setAddr(addr);
		ordersBiz.updateOrdersState(orders);
		
		List<Orderitem> listOrderitem = orderItemBiz.queryAllOrderitem_o_id(orders.getO_id());
		for (int i=0; i<listOrderitem.size(); i++) {
			int item_id = listOrderitem.get(i).getItem_id();
			Product product = productBiz.csIdQueryProduct(item_id);
			product.setSale_volume(product.getSale_volume()-1);
			product.setP_repertory(product.getP_repertory()+1);
			productBiz.payProductUpdateVolumeRepertory(product);
		}
		return "payOrders";
	}
}
