package org.bigjava.merchant.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.bigjava.function.FileImageAction;
import org.bigjava.merchant.biz.MerchantBiz;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orders.biz.OrdersBiz;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MerchantAction extends ActionSupport implements ModelDriven<Merchant> {

	private Merchant merchant = new Merchant();
	private MerchantBiz merchantBiz;
	private UserBiz userBiz;// 用户的 biz
	private OrdersBiz ordersBiz;// 订单的biz
	private User user;// 用户的信息
	private User loginUser;// 登录的用户信息
	private Orders orders;// 订单信息
	private FileImageAction fileImageAction;// 上传一张图片的方法
	
	private List<Orders> listOrders;// 查询到的订单
	
	public FileImageAction getFileImageAction() {
		return fileImageAction;
	}

	public void setFileImageAction(FileImageAction fileImageAction) {
		this.fileImageAction = fileImageAction;
	}
	
	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public List<Orders> getListOrders() {
		return listOrders;
	}

	public void setListOrders(List<Orders> listOrders) {
		this.listOrders = listOrders;
	}

	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public void setMerchantBiz(MerchantBiz merchantBiz) {
		this.merchantBiz = merchantBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public Merchant getModel() {
		return merchant;
	}

	/**
	 * 注册店铺
	 * @throws IOException 
	 */
	public String registerMerchant() throws IOException {
		System.out.println("开始注册店铺" + loginUser.getUsername());
		System.out.println("ss"+fileImageAction.getFileImage());
		// 上传图片
		fileImageAction.fileImage();
		user = userBiz.queryUsernameUser(loginUser.getUsername());
		merchant.setM_time(new Date());// 店铺注册时间
		merchant.setM_is_freeze(1);// 店铺状态
		merchant.setM_image(fileImageAction.getFileImageFileName());
		merchantBiz.registerMerchant(merchant, user);
		return "registerMerchantSuccess";
	}

	/**
	 * 通过店铺ID查询店铺
	 */
	public String getMerchantById() {
		merchantBiz.queryMerchant(merchant.getM_id());
		return "getMerchantByIdSuccess";
	}

	/**
	 * 删除店铺
	 */
	public String deleteMerchant() {
		merchantBiz.deleteMerchant(merchant);
		return "deleteMerchantSuccess";
	}

	/**
	 * 修改店铺
	 */
	public String updateMerchant() {
//		Merchant updateMerchant ;
//		merchantBiz.updateMerchant(merchant, updateMerchant);
		return "updateMerchantSuccess";
	}

	/**
	 * 跳转到我的店铺
	 */
	public String gotoMerchant() {
		System.out.println("MerchantAction。。跳转到我的店铺>gotoMerchant()..");
		return "gotoMerchant";
	}
	
	/**
	 * 添加店铺公告
	 */
	public String addNotice() {
		System.out.println("MerchantAction.....addNotice().");
		merchantBiz.addNotice(merchant);
		return "addNotice";
	}
	
	/**
	 * 修改店铺公告
	 */
	public String updateNotice() {
		System.out.println("修改店铺公告");
		merchantBiz.updateNotice(merchant);
		return "updateNotice";
	}
	
	/**
	 * 查询买家的订单详情
	 */
	public String queryMerchantOrders() {
		System.out.println("开始查询买家的订单详情");
		listOrders = merchantBiz.queryListOrders(merchant.getM_id());
		System.out.println("订单详情"+listOrders);
		return "queryMerchantOrders";
	}
	
	/**
	 * 修改买家的订单的状态
	 */
	public String updateMerchantOrdersState() {
		System.out.println("修改买家的订单的状态");
		Orders merchatnOrders = ordersBiz.queryOrders_id(orders.getO_id());
		if (merchatnOrders.getState() == 2) {// 支付状态
			merchatnOrders.setState(3);// 待发货状态
			merchantBiz.updateOrdersState(merchatnOrders);
		}
		return "updateMerchantOrdersState";
	}
}

