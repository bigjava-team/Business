package org.bigjava.orders.action;

import org.bigjava.addr.biz.AddrBiz;
import org.bigjava.addr.entity.Addr;
import org.bigjava.function.Alipay;
import org.bigjava.orders.biz.OrdersBiz;
import org.bigjava.orders.entity.Orders;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;

public class PaymentOrders {
	
	private String out_trade_no;// 订单号
	private String total_amount;// 付款金额
	private String subject;// 订单名称
	private String result;// 付款请求
	
	private OrdersBiz ordersBiz;
	
	private Orders orders;// 订单
	
	private Addr addr;// 收货地址
	
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

	// 支付订单
	public String payOrders() throws AlipayApiException {
		System.out.println("开始付款");
		//获得初始化的AlipayClient
		AlipayClient alipayClient = new DefaultAlipayClient(Alipay.gatewayUrl, Alipay.app_id, Alipay.merchant_private_key, "json", Alipay.charset, Alipay.alipay_public_key, Alipay.sign_type);
		
		//设置请求参数
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(Alipay.return_url);
		alipayRequest.setNotifyUrl(Alipay.notify_url);
		
		alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
				+ "\"total_amount\":\""+ total_amount +"\"," 
				+ "\"subject\":\""+ subject +"\"," 
				+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
		
		result = alipayClient.pageExecute(alipayRequest).getBody();// 返回页面的请求
		
		orders = ordersBiz.orderNumberQueryOrders(out_trade_no);
		orders.setState(2);
		orders.setAddr(addr);
		ordersBiz.updateOrdersState(orders);
		return "payOrders";
	}

}
