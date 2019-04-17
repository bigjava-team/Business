package org.bigjava.merchant.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.bigjava.function.FileImageAction;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.merchant.biz.MerchantBiz;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orders.biz.OrdersBiz;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MerchantAction extends ActionSupport implements ModelDriven<Merchant> {

	private IsEmpty isEmpty = new IsEmpty();
	private Merchant merchant = new Merchant();
	private MerchantBiz merchantBiz;
	private UserBiz userBiz;// 用户的 biz
	private OrdersBiz ordersBiz;// 订单的biz
	private User user;// 用户的信息
	private User loginUser;// 登录的用户信息
	private Orders orders;// 订单信息
	private FileImageAction fileImageAction;// 上传一张图片的方法
	
	private String searchText;// 模糊搜索的值

	private Paging paging;// 分页的方法

	private List<Orders> listOrders;// 查询到的订单

	private int merchant_id;// 店铺id

	private List<Product> merchantProductTime;
	private List<Product> merchantProductTop;
	private List<Merchant> listAllMerchant;// 管理员查询的全部店铺
	private List<Product> listMerchantProduct;// 店铺内的商品
	
	public List<Product> getListMerchantProduct() {
		return listMerchantProduct;
	}

	public void setListMerchantProduct(List<Product> listMerchantProduct) {
		this.listMerchantProduct = listMerchantProduct;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public List<Merchant> getListAllMerchant() {
		return listAllMerchant;
	}

	public void setListAllMerchant(List<Merchant> listAllMerchant) {
		this.listAllMerchant = listAllMerchant;
	}

	public List<Product> getMerchantProductTop() {
		return merchantProductTop;
	}

	public void setMerchantProductTop(List<Product> merchantProductTop) {
		this.merchantProductTop = merchantProductTop;
	}

	public List<Product> getMerchantProductTime() {
		return merchantProductTime;
	}

	public void setMerchantProductTime(List<Product> merchantProductTime) {
		this.merchantProductTime = merchantProductTime;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public int getMerchant_id() {
		return merchant_id;
	}

	public void setMerchant_id(int merchant_id) {
		this.merchant_id = merchant_id;
	}

	public void setOrdersBiz(OrdersBiz ordersBiz) {
		this.ordersBiz = ordersBiz;
	}

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
	 * 
	 * @throws IOException
	 */
	public String registerMerchant() throws IOException {
		System.out.println("开始注册店铺" + loginUser.getUsername());
		System.out.println("ss" + fileImageAction.getFileImage());
		// 上传图片
		fileImageAction.fileImage();
		user = userBiz.queryUsernameUser(loginUser.getUsername());
		merchant.setM_time(new Date());// 店铺注册时间
		merchant.setM_is_freeze(1);// 店铺状态
		merchant.setM_image(fileImageAction.getFileImageFileName());
		merchantBiz.registerMerchant(merchant, user);
		
		User users = user;
		users.setRoot(2);
		userBiz.updateUser(user, users);
		return "registerMerchantSuccess";
	}

	/**
	 * 通过店铺ID查询店铺
	 */
	public String queryMerchantById() {
		merchant = merchantBiz.queryMerchant(merchant.getM_id());
		ActionContext.getContext().getSession().put("merchant", merchant);
		return "queryMerchantById";
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
		merchant = merchantBiz.queryMerchant(merchant.getM_id());
		Merchant updateMerchant = merchant;
		if (merchant.getM_is_freeze() == 1) {
			updateMerchant.setM_is_freeze(2);
		} else if(merchant.getM_is_freeze() == 2) {
			updateMerchant.setM_is_freeze(3);
		} else if(merchant.getM_is_freeze() == 3) {
			updateMerchant.setM_is_freeze(2);
		}
		merchantBiz.updateMerchant(merchant, updateMerchant);
		return "updateMerchantSuccess";
	}

	/**
	 * 跳转到我的店铺
	 */
	public String gotoMerchant() {

		System.out.println("MerchantAction。。跳转到我的店铺>gotoMerchant()..");

		User u = userBiz.queryUsernameUser(loginUser.getUsername());
		Merchant m  = u.getMerchant();
		System.out.println("m"+m);
		if (m == null) {
			return "addMerchant";
		} else if(m.getM_is_freeze() == 1) {
			System.out.println("店铺申请中");
			return "merchantLoginError";
		} else if(m.getM_is_freeze() == 3) {
			System.out.println("店铺已冻结");
			return "merchantLoginError";
		}
		return "gotoMerchant";
	}

	/**
	 * 通过店铺ID查询店铺 查询店铺的公告
	 */
	public String getMerchantNotice() {
		merchant = merchantBiz.queryMerchant(merchant.getM_id());
		ActionContext.getContext().getSession().put("merchantNotice", merchant);
		return "getMerchantNotice";
	}

	/**
	 * 添加店铺公告
	 */
	public String addNotice() {
		System.out.println("MerchantAction.....addNotice().");
		Merchant merchants = merchantBiz.queryMerchant(merchant.getM_id());
		merchants.setNotice(merchant.getNotice());
		merchantBiz.addNotice(merchants);
		return "updateMerchantOrdersState";
	}

	/**
	 * 修改店铺公告
	 */
	public String updateNotice() {
		System.out.println("修改店铺公告");
		Merchant updateMerchantNotice = merchantBiz.queryMerchant(merchant.getM_id());
		updateMerchantNotice.setNotice(merchant.getNotice());
		merchantBiz.updateNotice(updateMerchantNotice);
		return "updateNotice";
	}

	/**
	 * 查询买家的订单详情
	 */
	public String queryMerchantOrders() {
		System.out.println("开始查询买家的订单详情");
		listOrders = merchantBiz.queryListOrders(merchant.getM_id());
		int divisor = listOrders.size() / 2;
		int remainder = listOrders.size() % 2;
		paging = new Paging(paging.getPresentPage(), listOrders.size(), 2);

		if (listOrders.size() != 0) {
			if (divisor < paging.getPresentPage() && remainder != 0) {
				listOrders = listOrders.subList((paging.getPresentPage() - 1) * 2, remainder + (divisor * 2));
			} else {
				listOrders = listOrders.subList((paging.getPresentPage() - 1) * 2, paging.getPresentPage() * 2);
			}
		}
		System.out.println("订单详情" + listOrders);
		return "queryMerchantOrders";
	}

	/**
	 * 修改买家的订单的状态
	 */
	public String updateMerchantOrdersState() {
		System.out.println("修改买家的订单的状态" + merchant.getM_id());
		merchant_id = merchant.getM_id();
		Orders merchantOrders = ordersBiz.queryOrders_id(orders.getO_id());
		if (merchantOrders.getState() == 2) {// 支付状态
			merchantOrders.setState(3);// 待发货状态
			merchantBiz.updateOrdersState(merchantOrders);
		}
		return "updateMerchantOrdersState";
	}

	/**
	 * 查询店铺商品
	 */
	public String showMerchantProduct() {
		System.out.println("进入首页MerchantAction.....showMerchantProduct");
		/* 查询最新的商品 */
		merchantProductTime = merchantBiz.queryProductMerchantTime();
		merchantProductTime = merchantProductTime.subList(0, 5);

		/* 查询最热的商品 */
		merchantProductTop = merchantBiz.queryProductMerchantTop();
		merchantProductTop = merchantProductTime.subList(0, 5);

		return "success";
	}
	
	/**
	 * 店长名模糊搜索店铺
	 */
	public String likeQueryMname() {
		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
		}
		System.out.println(searchText);
		int number = merchantBiz.likeQueryM_nameNumber(searchText.trim(), merchant.getM_is_freeze());
		System.out.println(number);
		paging = new Paging(paging.getPresentPage(), number, 10);
		listAllMerchant = merchantBiz.likeQueryM_name(paging, searchText.trim(), merchant.getM_is_freeze());
		System.out.println(listAllMerchant);
		return "likeQueryMname";
	}
	
	/**
	 * 模糊查询店铺内的商品
	 */
	public String mIdQueryAllProduct() {
		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
		}
		int number = merchantBiz.mIdQueryAllProductNumber(searchText, merchant.getM_id());
		System.out.println("商品 数"+number);
		System.out.println("店铺id"+merchant.getM_id());
		paging = new Paging(paging.getPresentPage(), number, 5);
		listMerchantProduct = merchantBiz.mIdQueryAllProduct(paging, searchText, merchant.getM_id());
		System.out.println(listMerchantProduct);
		return "mIdQueryAllProduct";
	}
	
	// 跳转到修改店铺的页面
	public String skipUpdateMerchantList() {
		merchant = merchantBiz.queryMerchant(merchant.getM_id());
		return "skipUpdateMerchantList";
	}
	
	// 修改店铺内容
	public String updateMerchantNameOrMerchantImage() throws IOException{
		Merchant merchants = merchantBiz.queryMerchant(merchant.getM_id());
		if (fileImageAction.getFileImage() != null) {
			fileImageAction.fileImage();
			String imageUrl = "E:\\Img\\"+merchants.getM_image();
			File fileDelete = new File(imageUrl);
			fileDelete.delete();
			merchant.setM_image(fileImageAction.getFileImageFileName());
		}
		merchantBiz.updateMerchant(merchants, merchant);
		return "updateMerchantNameOrMerchantImage";
	}
	
	// 店铺用户名模糊分页查询订单
	public String merchantLikeUsernameLimitQueryOrders() {
		System.out.println("开始查询");
		listOrders = merchantBiz.merchantLikeUsernameLimitQueryOrders(merchant.getM_id(), searchText);
		int divisor = listOrders.size() / 2;
		int remainder = listOrders.size() % 2;
		paging = new Paging(paging.getPresentPage(), listOrders.size(), 2);

		if (listOrders.size() != 0) {
			if (divisor < paging.getPresentPage() && remainder != 0) {
				listOrders = listOrders.subList((paging.getPresentPage() - 1) * 2, remainder + (divisor * 2));
			} else {
				listOrders = listOrders.subList((paging.getPresentPage() - 1) * 2, paging.getPresentPage() * 2);
			}
		}
		System.out.println("订单详情" + listOrders);
		return "merchantLikeUsernameLimitQueryOrders";
	}
}
