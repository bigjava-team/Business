package org.bigjava.statement;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

import org.bigjava.addr.dao.AddrDao;
import org.bigjava.addr.entity.Addr;
import org.bigjava.category.dao.CategoryDao;
import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.dao.CategorySecondDao;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.collectMerchant.dao.CollectMerchantDao;
import org.bigjava.collectMerchant.entity.CollectMerchant;
import org.bigjava.collectProduct.dao.CollectProductDao;
import org.bigjava.function.Paging;
import org.bigjava.function.SendMail;
import org.bigjava.merchant.dao.MerchantDao;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orderitem.dao.OrderItemDao;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.orders.dao.OrdersDao;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.dao.ProductDao;
import org.bigjava.product.entity.Product;
import org.bigjava.user.dao.UserDao;
import org.bigjava.user.entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestStatement {
	
	public static ApplicationContext app = new ClassPathXmlApplicationContext("app.xml");
	public static UserDao userDao = (UserDao) app.getBean("userDao");
	public static MerchantDao merchantDao = (MerchantDao) app.getBean("merchantDao");
	public static CategoryDao categoryDao = (CategoryDao) app.getBean("categoryDao");
	public static CategorySecondDao categorySecondDao = (CategorySecondDao) app.getBean("categorySecondDao");
	public static AddrDao addrDao = (AddrDao) app.getBean("addrDao");
	public static ProductDao productDao = (ProductDao) app.getBean("productDao");
	public static OrderItemDao orderItemDao = (OrderItemDao) app.getBean("orderItemDao");
	public static OrdersDao ordersDao = (OrdersDao) app.getBean("ordersDao");
	public static CollectMerchantDao collectMerchantDao = (CollectMerchantDao) app.getBean("collectMerchantDao");
	public static CollectProductDao collectProductDao = (CollectProductDao) app.getBean("collectProductDao");
	public static Scanner input = new Scanner(System.in);
	
	//  查询最新的商品
	public static void queryProduct_time() {
		List<Product> list = productDao.queryProduct_time();
		System.out.println(list);
	}
	
	// 分页查询
	public static void queryAllCollectMerchant() {
		System.out.println("输入查询的收藏用户的id");
		int u_id = input.nextInt();
		
		int totalNumber = collectMerchantDao.queryCollectMerchant_number(u_id);
		
		System.out.println("输入开始查询的页数");
		int page = input.nextInt();
		
		Paging paging = new Paging(page, totalNumber, 1);
		
		List<CollectMerchant> listCollectMerchant = collectMerchantDao.queryCollectMerchant_Uid(u_id, paging);
		System.out.println(listCollectMerchant);
	}
	
	// 删除收藏的店铺
	public static void deleteCollectMerchant() {
		System.out.println("输入收藏店铺的id");
		int CM_id = input.nextInt();
		
		CollectMerchant collectMerchant = collectMerchantDao.queryCollectMerchant_id(CM_id);
		
		collectMerchantDao.deleteCollectMerchant(collectMerchant);
	}
	
	// 收藏店铺
	public static void CollectMerchant() {
		System.out.println("输入收藏店铺的用户id");
		int u_id = input.nextInt();
		
		User user = userDao.query(u_id);
		
		System.out.println("输入需要收藏的店铺ID");
		int m_id = input.nextInt();
		
		Merchant merchant = merchantDao.queryMerchant(m_id);
		
		CollectMerchant collectMerchant = new CollectMerchant();
		
		collectMerchantDao.addCollectMerchant(collectMerchant, user, merchant);
	}
	
	// 添加订单
	public static void addOrders() {
		System.out.println("输入购买的订单项的id");
		int item_id = input.nextInt();
		System.out.println("输入再次购买的订单项id");
		int item_id2 = input.nextInt();
		List<Integer> listItem_id = new ArrayList<Integer>(); 
		listItem_id.add(item_id);
		listItem_id.add(item_id2);
		System.out.println("输入收货地址的id");
		int a_id = input.nextInt();
		
		
		Orders orders = new Orders();
		double total = 0.0;
		orders.setOrdertim(new Date());
		
		List<Orderitem> listOrderItem = new ArrayList<Orderitem>();// 查询到的订单项
		
		for (int i=0; i<listItem_id.size(); i++) {
			listOrderItem.add(orderItemDao.queryOrderItem_id(listItem_id.get(i)));// 通过订单项表
			total += listOrderItem.get(i).getSubtotal();
		}
		
		Addr addr = addrDao.queryAddr_id(a_id);// 选择添加的收货地址
		
		User user = listOrderItem.get(0).getUser();
		
		System.out.println("输入订单号");
		String orderNumber = input.next();
		orders.setTotal(total);
		orders.setOrderNumber(orderNumber);
		orders.setState(1);
		
		ordersDao.addOrders(orders, user, addr);
		
		Orders updateOrderItem = ordersDao.queryOrders_orderNumber(orderNumber);
		
		orderItemDao.addOrders_id(listOrderItem, updateOrderItem);
		
			
	}
	
	// 分页查询订单项
	public static void queryAllOrderItem() {
		System.out.println("输入要查询订单项的用户id");
		int u_id = input.nextInt();
		
		User user = userDao.query(u_id);
		
		int totalNumber = orderItemDao.queryOrderItemNumber(user);
		
		System.out.println("输入开始查询的页数");
		int page = input.nextInt();
		
		Paging pages = new Paging(page, totalNumber, 2);
		orderItemDao.queryAllOrderItem(user, pages);
	}
	
	// 删除订单项
	public static void deleteOrderItem() {
		System.out.println("输入要删除的订单id");
		int o_id = input.nextInt();
		
		Orderitem orderitem = orderItemDao.queryOrderItem_id(o_id);
		orderItemDao.deleteOrderItem(orderitem);
	}
	
	// 通过订单项id获取的订单项内容
	public static void queryOrderItem_id() {
		System.out.println("输入订单的id");
		int o_id = input.nextInt();
		
		Orderitem Orderitem = orderItemDao.queryOrderItem_id(o_id);
		System.out.println(Orderitem);
	}
	
	// 添加订单项
	public static void addOrderitem() {
		System.out.println("输入添加的订单的用户id");
		int u_id  = input.nextInt();
		System.out.println("输入添加的订单商品的id");
		int p_id = input.nextInt();
		System.out.println("输入购买商品的数量");
		int p_number = input.nextInt();
		
		User user = userDao.query(u_id);
		Product product = productDao.queryProduct_id(p_id);
		Orderitem orderItem = new Orderitem();
		orderItem.setCount(p_number);
		orderItem.setSubtotal(p_number*product.getP_price());
		
		orderItemDao.addOrderItem(orderItem, user, product);
	}
	
	// 分页查询商品
	public static void pagingQueryProduct() {
		System.out.println("输入搜索内容");
		String searchProduct = input.next();
		
		int totalNumber = productDao.queryProductNumber(searchProduct);
		
		System.out.println("输入从哪页开始查");
		int presentPage = input.nextInt();
		Paging page = new Paging(presentPage, totalNumber, 2);
		
		productDao.queryAllProduct(searchProduct, page);
	}
	
	// 修改商品内容
	public static void udpateProdcut() {
		System.out.println("输入要修改的商品id");
		int p_id = input.nextInt();
		Product product = productDao.queryProduct_id(p_id);
		
		System.out.println("输入修改的商品名");
		String p_name = input.next();
		
		Product updateProduct = new Product();
		product.setP_name(p_name);
		productDao.updateProduct(product, updateProduct);
	}
	
	// 通过商品id查询商品
	public static void queryProduct_id() {
		System.out.println("输入查询的商品id");
		int id = input.nextInt();
		productDao.queryProduct_id(id);
	}
	
	// 分页查询收货地址
	public static void pagingQueryAddr() {
		System.out.println("输入查询收货地址的用户id");
		int u_id = input.nextInt();
		
		User user = userDao.query(u_id);
		
		int totalNumber = addrDao.queryAllAddrNumber(user);
		System.out.println("输入从哪页开始查");
		int presentPage = input.nextInt();
		Paging page = new Paging(presentPage, totalNumber, 1);
		
		addrDao.queryAllAddr(page, user);
	}
	
	// 删除收货地址
	public static void deleteAddr() {
		System.out.println("输入要删除的收货地址id");
		int a_id = input.nextInt();
		
		Addr addr = addrDao.queryAddr_id(a_id);
		addrDao.deleteAddr(addr);
	}
	
	// 通过收货地址id查询收货地址
	public static void queryAddr_Id() {
		System.out.println("输入要查询的收货地址id");
		int a_id = input.nextInt();
		
		Addr addr = addrDao.queryAddr_id(a_id);
		System.out.println("查询到的收货地址" + addr);
	}
	
	// 修改收货地址
	public static void updateAddr() {
		System.out.println("输入要修改的收货地址id");
		int a_id = input.nextInt();
		Addr addr = addrDao.queryAddr_id(a_id);
		
		System.out.println("输入修改的收货地址名");
		String a_address = input.next();
		System.out.println("输入修改的收货人");
		String a_name = input.next();
		
		Addr updateAddr = new Addr();
		updateAddr.setAddress(a_address);
		updateAddr.setA_name(a_name);
		
		addrDao.updateAddr(addr, updateAddr);
	}
	
	// 添加收货地址
	public static void addAddr() {
		System.out.println("输入添加收货地址的用户id");
		int u_id = input.nextInt();
		
		User user = new User();
		user.setU_id(u_id);
		
		System.out.println("输入收货人姓名");
		String a_name = input.next();
		System.out.println("输入收货人的电话号码");
		String a_phone = input.next();
		System.out.println("输入收货人的收货地址");
		String a_address = input.next();
		
		Addr addr = new Addr();
		addr.setA_name(a_name);
		addr.setA_phone(a_phone);
		addr.setAddress(a_address);
		
		addrDao.addAddr(addr, user);
		
	}
	
	// 模糊查询二級分类
	public static void likeQueryCategorySecond() {
		System.out.println("开始查询");
		System.out.println("输入搜索的二级分类名");
		String search_name = input.next();
		
		int totalNumber = categorySecondDao.queryCategorySecondNumber(search_name);
		System.out.println("输入当前页数");
		int presentPage = input.nextInt();
		Paging paging = new Paging(presentPage, totalNumber, 1);
		
		categorySecondDao.queryAllCategorySecond(search_name, paging);
	}
	
	// 删除二级分类
	public static void deleteCategorySecond() {
		System.out.println("输入删除的二级分类的id");
		int c_id = input.nextInt();
		
		CategorySecond categorySecond = categorySecondDao.queryCategorySecond(c_id);
		categorySecondDao.deleteCategorySecond(categorySecond);
	}
	
	// 通过id查询二级分类
	public static void queryCategorySecond() {
		System.out.println("输入查询的二级分类id");
		int c_id = input.nextInt();
		
		categorySecondDao.queryCategorySecond(c_id);
	}
	
	// 添加二级分类
	public static void addCategorySecond() {
		System.out.println("添加二级分类名");
		String c_name = input.next();
		
		CategorySecond categorySecond = new CategorySecond();
		categorySecond.setCs_name(c_name);
		
		System.out.println("输入连接的一级分类的id");
		int c_id = input.nextInt();
		Category category = categoryDao.queryCategory(c_id);
		categorySecond.setCategory(category);
		
		categorySecondDao.addCategorySecond(categorySecond);
	}
	
	// 删除一级分类
	public static void deleteCategory() {
		System.out.println("输入删除的一级分类的id");
		int c_id = input.nextInt();
		
		Category category = categoryDao.queryCategory(c_id);
		categoryDao.deleteCategory(category);
	}
	
	// 通过id查询一级分类
	public static void queryCategory() {
		System.out.println("输入查询的一级分类id");
		int c_id = input.nextInt();
		
		categoryDao.queryCategory(c_id);
	}
	
	// 查询全部一级分类
	public static void queryAllCategory() {
		categoryDao.queryAllCategory();
		
	}
	
	// 添加一级分类
	public static void addCategory() {
		System.out.println("添加一级分类名");
		String c_name = input.next();
		
		Category category = new Category();
		category.setC_name(c_name);
		
		categoryDao.addCategory(category);
	}
	
	// 添加商品
	public static void addProduct() {
		System.out.println("输入要添加商品的店铺id");
		int id = input.nextInt();
		System.out.println("输入添加商品属于二级分类的id");
		int cs_id = input.nextInt();
		System.out.println("输入商品名");
		String product_name = input.next();
		System.out.println("输入商品价格");
		Double product_price = input.nextDouble();
		System.out.println("输入商品市场价格");
		Double product_market = input.nextDouble();
		System.out.println("输入商品描述");
		String p_desc = input.next();
		int is_hot = 1;
		int p_freeze = 1;
		Date p_date = new Date();
		
		Product product = new Product();
		product.setP_name(product_name);
		product.setP_price(product_price);
		product.setMarket(product_market);
		product.setP_desc(p_desc);
		product.setP_date(p_date);
		product.setP_freeze(p_freeze);
		
		Merchant merchant = merchantDao.queryMerchant(id);
		CategorySecond categorySecond = categorySecondDao.queryCategorySecond(cs_id);
		productDao.addProduct(product, merchant, categorySecond);
	}
	
	// 修改店铺信息
	public static void updateMerchant() {
		System.out.println("输入修改的店铺的id");
		int m_id = input.nextInt();
		System.out.println("输入修改的店铺名");
		String m_name = input.next();
		System.out.println("输入修改的店铺权限");
		int m_is_freeze = input.nextInt();
		
		Merchant merchant = merchantDao.queryMerchant(m_id);
		
		Merchant updateMerchant = new Merchant();
		updateMerchant.setM_name(m_name);
		updateMerchant.setM_is_freeze(m_is_freeze);
		
		merchantDao.updateMerchant(merchant, updateMerchant);
	}
	
	// 删除店铺信息
	public static void deleteMerchant() {
		System.out.println("输入删除店铺的id");
		int id = input.nextInt();
		
		Merchant merchant = merchantDao.queryMerchant(id);
		
		merchantDao.deleteMerchant(merchant);
	}
	
	// 修改密码
	public static void updateUserPassword() {
		System.out.println("修改密码用户的id");
		int id = input.nextInt();
		System.out.println("修改后密码");
		String newPassword = input.next();
		
		User user = userDao.query(id);
		
		if (user == null || user.equals("")) {
			System.out.println("没有此用户");
			return;
		}
		
		userDao.updateUserPassword(newPassword, user);
	}
	
	// 登录
	public static void loginUser() {
		System.out.println("用户名");
		String username = input.next();
		System.out.println("密码");
		String password = input.next();
		
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		userDao.loginUser(user);
	}
	
	// 注册店铺
	public static void registerMerchant() {
		System.out.println("输入注册店铺yonghu的id");
		int u_id = input.nextInt();
		System.out.println("输入店铺名");
		String m_name = input.next();
		Date m_time = new Date();
		int m_is_freeze = 1;
		
		Merchant merchant = new Merchant();
		merchant.setM_name(m_name);
		merchant.setM_time(m_time);
		merchant.setM_is_freeze(m_is_freeze);
		
		User user = userDao.query(u_id);
		
		merchantDao.registerMerchant(merchant, user);
	}
	
	// 查询用户是否已存在
	public static void checkUsername() {
		System.out.println("开始校验用户名");
		String username = input.next();
		userDao.checkUsername(username);
	}
	
	// 发送邮件
	public static void sendRandom() {
		String randomNumber = "验证码:"+SendMail.randomNumber();//	验证码
		
		SendMail.sendMail("2868583170@qq.com", randomNumber, "Business第二次测试");//	设置收件人邮箱、验证码、邮件主题
	}
	
	// 注册用户
	public static void registerUser() {
		User user = new User();
		System.out.println("开始注册");
		System.out.println("用户名:");
		String username = input.next();
		System.out.println("密码:");
		String password = input.next();
		System.out.println("用户真实姓名:");
		String u_name = input.next();
		System.out.println("用户性别");
		String sex = input.next();
		System.out.println("用户邮箱:");
		String email = input.next();
		System.out.println("用户电话号码:");
		String phone = input.next();
		user.setUsername(username);
		user.setPassword(password);
		user.setU_name(u_name);
		user.setSex(sex);
		user.setEmail(email);
		user.setPhone(phone);
		
		userDao.registerUser(user);
		System.out.println("注册成功！");
	}
	
	//	修改语句
	public static void update() {
		User user = new User();
		System.out.println("开始修改");
		System.out.println("输入要修改的用户id");
		int u_id = input.nextInt();
		
		User users = userDao.query(u_id);
		if (users == null) {
			System.out.println("没有此用户");
			return;
		}
		
		System.out.println("用户名:");
		String username = input.next();
		System.out.println("用户性别");
		String sex = input.next();
		user.setU_id(u_id);
		user.setUsername(username);
		user.setSex(sex);
		
		userDao.updateUser(user, users);
		System.out.println("修改成功！");
	}
	
	//删除用户
	public static void delete() {
		System.out.println("开始删除");
		System.out.println("输入要删除的用户id");
		int u_id = input.nextInt();
		
		User user = userDao.query(u_id);
		if (user == null) {
			System.out.println("没有此用户");
			return;
		}
		
		userDao.deleteUser(user);
	}
	
	// 模糊查询总条数
	public static void demendPages() {
		System.out.println("开始查询");
		System.out.println("输入插叙的权限");
		int root = input.nextInt();
		System.out.println("输入查询的username");
		String username = input.next();
		if (username.equals("") || username.equals(null)) {
			System.out.println("没有此昵称");
		}
		
		int totalNumber = userDao.queryPages(username, root);
		System.out.println("输入当前页数");
		int presentPage = input.nextInt();
		Paging paging = new Paging(presentPage, totalNumber, 1);
		
		userDao.limitDemend(username, paging, root);
	}

}
