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
	
	//  ��ѯ���µ���Ʒ
	public static void queryProduct_time() {
		List<Product> list = productDao.queryProduct_time();
		System.out.println(list);
	}
	
	// ��ҳ��ѯ
	public static void queryAllCollectMerchant() {
		System.out.println("�����ѯ���ղ��û���id");
		int u_id = input.nextInt();
		
		int totalNumber = collectMerchantDao.queryCollectMerchant_number(u_id);
		
		System.out.println("���뿪ʼ��ѯ��ҳ��");
		int page = input.nextInt();
		
		Paging paging = new Paging(page, totalNumber, 1);
		
		List<CollectMerchant> listCollectMerchant = collectMerchantDao.queryCollectMerchant_Uid(u_id, paging);
		System.out.println(listCollectMerchant);
	}
	
	// ɾ���ղصĵ���
	public static void deleteCollectMerchant() {
		System.out.println("�����ղص��̵�id");
		int CM_id = input.nextInt();
		
		CollectMerchant collectMerchant = collectMerchantDao.queryCollectMerchant_id(CM_id);
		
		collectMerchantDao.deleteCollectMerchant(collectMerchant);
	}
	
	// �ղص���
	public static void CollectMerchant() {
		System.out.println("�����ղص��̵��û�id");
		int u_id = input.nextInt();
		
		User user = userDao.query(u_id);
		
		System.out.println("������Ҫ�ղصĵ���ID");
		int m_id = input.nextInt();
		
		Merchant merchant = merchantDao.queryMerchant(m_id);
		
		CollectMerchant collectMerchant = new CollectMerchant();
		
		collectMerchantDao.addCollectMerchant(collectMerchant, user, merchant);
	}
	
	// ��Ӷ���
	public static void addOrders() {
		System.out.println("���빺��Ķ������id");
		int item_id = input.nextInt();
		System.out.println("�����ٴι���Ķ�����id");
		int item_id2 = input.nextInt();
		List<Integer> listItem_id = new ArrayList<Integer>(); 
		listItem_id.add(item_id);
		listItem_id.add(item_id2);
		System.out.println("�����ջ���ַ��id");
		int a_id = input.nextInt();
		
		
		Orders orders = new Orders();
		double total = 0.0;
		orders.setOrdertim(new Date());
		
		List<Orderitem> listOrderItem = new ArrayList<Orderitem>();// ��ѯ���Ķ�����
		
		for (int i=0; i<listItem_id.size(); i++) {
			listOrderItem.add(orderItemDao.queryOrderItem_id(listItem_id.get(i)));// ͨ���������
			total += listOrderItem.get(i).getSubtotal();
		}
		
		Addr addr = addrDao.queryAddr_id(a_id);// ѡ����ӵ��ջ���ַ
		
		User user = listOrderItem.get(0).getUser();
		
		System.out.println("���붩����");
		String orderNumber = input.next();
		orders.setTotal(total);
		orders.setOrderNumber(orderNumber);
		orders.setState(1);
		
		ordersDao.addOrders(orders, user, addr);
		
		Orders updateOrderItem = ordersDao.queryOrders_orderNumber(orderNumber);
		
		orderItemDao.addOrders_id(listOrderItem, updateOrderItem);
		
			
	}
	
	// ��ҳ��ѯ������
	public static void queryAllOrderItem() {
		System.out.println("����Ҫ��ѯ��������û�id");
		int u_id = input.nextInt();
		
		User user = userDao.query(u_id);
		
		int totalNumber = orderItemDao.queryOrderItemNumber(user);
		
		System.out.println("���뿪ʼ��ѯ��ҳ��");
		int page = input.nextInt();
		
		Paging pages = new Paging(page, totalNumber, 2);
		orderItemDao.queryAllOrderItem(user, pages);
	}
	
	// ɾ��������
	public static void deleteOrderItem() {
		System.out.println("����Ҫɾ���Ķ���id");
		int o_id = input.nextInt();
		
		Orderitem orderitem = orderItemDao.queryOrderItem_id(o_id);
		orderItemDao.deleteOrderItem(orderitem);
	}
	
	// ͨ��������id��ȡ�Ķ���������
	public static void queryOrderItem_id() {
		System.out.println("���붩����id");
		int o_id = input.nextInt();
		
		Orderitem Orderitem = orderItemDao.queryOrderItem_id(o_id);
		System.out.println(Orderitem);
	}
	
	// ��Ӷ�����
	public static void addOrderitem() {
		System.out.println("������ӵĶ������û�id");
		int u_id  = input.nextInt();
		System.out.println("������ӵĶ�����Ʒ��id");
		int p_id = input.nextInt();
		System.out.println("���빺����Ʒ������");
		int p_number = input.nextInt();
		
		User user = userDao.query(u_id);
		Product product = productDao.queryProduct_id(p_id);
		Orderitem orderItem = new Orderitem();
		orderItem.setCount(p_number);
		orderItem.setSubtotal(p_number*product.getP_price());
		
		orderItemDao.addOrderItem(orderItem, user, product);
	}
	
	// ��ҳ��ѯ��Ʒ
	public static void pagingQueryProduct() {
		System.out.println("������������");
		String searchProduct = input.next();
		
		int totalNumber = productDao.queryProductNumber(searchProduct);
		
		System.out.println("�������ҳ��ʼ��");
		int presentPage = input.nextInt();
		Paging page = new Paging(presentPage, totalNumber, 2);
		
		productDao.queryAllProduct(searchProduct, page);
	}
	
	// �޸���Ʒ����
	public static void udpateProdcut() {
		System.out.println("����Ҫ�޸ĵ���Ʒid");
		int p_id = input.nextInt();
		Product product = productDao.queryProduct_id(p_id);
		
		System.out.println("�����޸ĵ���Ʒ��");
		String p_name = input.next();
		
		Product updateProduct = new Product();
		product.setP_name(p_name);
		productDao.updateProduct(product, updateProduct);
	}
	
	// ͨ����Ʒid��ѯ��Ʒ
	public static void queryProduct_id() {
		System.out.println("�����ѯ����Ʒid");
		int id = input.nextInt();
		productDao.queryProduct_id(id);
	}
	
	// ��ҳ��ѯ�ջ���ַ
	public static void pagingQueryAddr() {
		System.out.println("�����ѯ�ջ���ַ���û�id");
		int u_id = input.nextInt();
		
		User user = userDao.query(u_id);
		
		int totalNumber = addrDao.queryAllAddrNumber(user);
		System.out.println("�������ҳ��ʼ��");
		int presentPage = input.nextInt();
		Paging page = new Paging(presentPage, totalNumber, 1);
		
		addrDao.queryAllAddr(page, user);
	}
	
	// ɾ���ջ���ַ
	public static void deleteAddr() {
		System.out.println("����Ҫɾ�����ջ���ַid");
		int a_id = input.nextInt();
		
		Addr addr = addrDao.queryAddr_id(a_id);
		addrDao.deleteAddr(addr);
	}
	
	// ͨ���ջ���ַid��ѯ�ջ���ַ
	public static void queryAddr_Id() {
		System.out.println("����Ҫ��ѯ���ջ���ַid");
		int a_id = input.nextInt();
		
		Addr addr = addrDao.queryAddr_id(a_id);
		System.out.println("��ѯ�����ջ���ַ" + addr);
	}
	
	// �޸��ջ���ַ
	public static void updateAddr() {
		System.out.println("����Ҫ�޸ĵ��ջ���ַid");
		int a_id = input.nextInt();
		Addr addr = addrDao.queryAddr_id(a_id);
		
		System.out.println("�����޸ĵ��ջ���ַ��");
		String a_address = input.next();
		System.out.println("�����޸ĵ��ջ���");
		String a_name = input.next();
		
		Addr updateAddr = new Addr();
		updateAddr.setAddress(a_address);
		updateAddr.setA_name(a_name);
		
		addrDao.updateAddr(addr, updateAddr);
	}
	
	// ����ջ���ַ
	public static void addAddr() {
		System.out.println("��������ջ���ַ���û�id");
		int u_id = input.nextInt();
		
		User user = new User();
		user.setU_id(u_id);
		
		System.out.println("�����ջ�������");
		String a_name = input.next();
		System.out.println("�����ջ��˵ĵ绰����");
		String a_phone = input.next();
		System.out.println("�����ջ��˵��ջ���ַ");
		String a_address = input.next();
		
		Addr addr = new Addr();
		addr.setA_name(a_name);
		addr.setA_phone(a_phone);
		addr.setAddress(a_address);
		
		addrDao.addAddr(addr, user);
		
	}
	
	// ģ����ѯ��������
	public static void likeQueryCategorySecond() {
		System.out.println("��ʼ��ѯ");
		System.out.println("���������Ķ���������");
		String search_name = input.next();
		
		int totalNumber = categorySecondDao.queryCategorySecondNumber(search_name);
		System.out.println("���뵱ǰҳ��");
		int presentPage = input.nextInt();
		Paging paging = new Paging(presentPage, totalNumber, 1);
		
		categorySecondDao.queryAllCategorySecond(search_name, paging);
	}
	
	// ɾ����������
	public static void deleteCategorySecond() {
		System.out.println("����ɾ���Ķ��������id");
		int c_id = input.nextInt();
		
		CategorySecond categorySecond = categorySecondDao.queryCategorySecond(c_id);
		categorySecondDao.deleteCategorySecond(categorySecond);
	}
	
	// ͨ��id��ѯ��������
	public static void queryCategorySecond() {
		System.out.println("�����ѯ�Ķ�������id");
		int c_id = input.nextInt();
		
		categorySecondDao.queryCategorySecond(c_id);
	}
	
	// ��Ӷ�������
	public static void addCategorySecond() {
		System.out.println("��Ӷ���������");
		String c_name = input.next();
		
		CategorySecond categorySecond = new CategorySecond();
		categorySecond.setCs_name(c_name);
		
		System.out.println("�������ӵ�һ�������id");
		int c_id = input.nextInt();
		Category category = categoryDao.queryCategory(c_id);
		categorySecond.setCategory(category);
		
		categorySecondDao.addCategorySecond(categorySecond);
	}
	
	// ɾ��һ������
	public static void deleteCategory() {
		System.out.println("����ɾ����һ�������id");
		int c_id = input.nextInt();
		
		Category category = categoryDao.queryCategory(c_id);
		categoryDao.deleteCategory(category);
	}
	
	// ͨ��id��ѯһ������
	public static void queryCategory() {
		System.out.println("�����ѯ��һ������id");
		int c_id = input.nextInt();
		
		categoryDao.queryCategory(c_id);
	}
	
	// ��ѯȫ��һ������
	public static void queryAllCategory() {
		categoryDao.queryAllCategory();
		
	}
	
	// ���һ������
	public static void addCategory() {
		System.out.println("���һ��������");
		String c_name = input.next();
		
		Category category = new Category();
		category.setC_name(c_name);
		
		categoryDao.addCategory(category);
	}
	
	// �����Ʒ
	public static void addProduct() {
		System.out.println("����Ҫ�����Ʒ�ĵ���id");
		int id = input.nextInt();
		System.out.println("���������Ʒ���ڶ��������id");
		int cs_id = input.nextInt();
		System.out.println("������Ʒ��");
		String product_name = input.next();
		System.out.println("������Ʒ�۸�");
		Double product_price = input.nextDouble();
		System.out.println("������Ʒ�г��۸�");
		Double product_market = input.nextDouble();
		System.out.println("������Ʒ����");
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
	
	// �޸ĵ�����Ϣ
	public static void updateMerchant() {
		System.out.println("�����޸ĵĵ��̵�id");
		int m_id = input.nextInt();
		System.out.println("�����޸ĵĵ�����");
		String m_name = input.next();
		System.out.println("�����޸ĵĵ���Ȩ��");
		int m_is_freeze = input.nextInt();
		
		Merchant merchant = merchantDao.queryMerchant(m_id);
		
		Merchant updateMerchant = new Merchant();
		updateMerchant.setM_name(m_name);
		updateMerchant.setM_is_freeze(m_is_freeze);
		
		merchantDao.updateMerchant(merchant, updateMerchant);
	}
	
	// ɾ��������Ϣ
	public static void deleteMerchant() {
		System.out.println("����ɾ�����̵�id");
		int id = input.nextInt();
		
		Merchant merchant = merchantDao.queryMerchant(id);
		
		merchantDao.deleteMerchant(merchant);
	}
	
	// �޸�����
	public static void updateUserPassword() {
		System.out.println("�޸������û���id");
		int id = input.nextInt();
		System.out.println("�޸ĺ�����");
		String newPassword = input.next();
		
		User user = userDao.query(id);
		
		if (user == null || user.equals("")) {
			System.out.println("û�д��û�");
			return;
		}
		
		userDao.updateUserPassword(newPassword, user);
	}
	
	// ��¼
	public static void loginUser() {
		System.out.println("�û���");
		String username = input.next();
		System.out.println("����");
		String password = input.next();
		
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		userDao.loginUser(user);
	}
	
	// ע�����
	public static void registerMerchant() {
		System.out.println("����ע�����yonghu��id");
		int u_id = input.nextInt();
		System.out.println("���������");
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
	
	// ��ѯ�û��Ƿ��Ѵ���
	public static void checkUsername() {
		System.out.println("��ʼУ���û���");
		String username = input.next();
		userDao.checkUsername(username);
	}
	
	// �����ʼ�
	public static void sendRandom() {
		String randomNumber = "��֤��:"+SendMail.randomNumber();//	��֤��
		
		SendMail.sendMail("2868583170@qq.com", randomNumber, "Business�ڶ��β���");//	�����ռ������䡢��֤�롢�ʼ�����
	}
	
	// ע���û�
	public static void registerUser() {
		User user = new User();
		System.out.println("��ʼע��");
		System.out.println("�û���:");
		String username = input.next();
		System.out.println("����:");
		String password = input.next();
		System.out.println("�û���ʵ����:");
		String u_name = input.next();
		System.out.println("�û��Ա�");
		String sex = input.next();
		System.out.println("�û�����:");
		String email = input.next();
		System.out.println("�û��绰����:");
		String phone = input.next();
		user.setUsername(username);
		user.setPassword(password);
		user.setU_name(u_name);
		user.setSex(sex);
		user.setEmail(email);
		user.setPhone(phone);
		
		userDao.registerUser(user);
		System.out.println("ע��ɹ���");
	}
	
	//	�޸����
	public static void update() {
		User user = new User();
		System.out.println("��ʼ�޸�");
		System.out.println("����Ҫ�޸ĵ��û�id");
		int u_id = input.nextInt();
		
		User users = userDao.query(u_id);
		if (users == null) {
			System.out.println("û�д��û�");
			return;
		}
		
		System.out.println("�û���:");
		String username = input.next();
		System.out.println("�û��Ա�");
		String sex = input.next();
		user.setU_id(u_id);
		user.setUsername(username);
		user.setSex(sex);
		
		userDao.updateUser(user, users);
		System.out.println("�޸ĳɹ���");
	}
	
	//ɾ���û�
	public static void delete() {
		System.out.println("��ʼɾ��");
		System.out.println("����Ҫɾ�����û�id");
		int u_id = input.nextInt();
		
		User user = userDao.query(u_id);
		if (user == null) {
			System.out.println("û�д��û�");
			return;
		}
		
		userDao.deleteUser(user);
	}
	
	// ģ����ѯ������
	public static void demendPages() {
		System.out.println("��ʼ��ѯ");
		System.out.println("��������Ȩ��");
		int root = input.nextInt();
		System.out.println("�����ѯ��username");
		String username = input.next();
		if (username.equals("") || username.equals(null)) {
			System.out.println("û�д��ǳ�");
		}
		
		int totalNumber = userDao.queryPages(username, root);
		System.out.println("���뵱ǰҳ��");
		int presentPage = input.nextInt();
		Paging paging = new Paging(presentPage, totalNumber, 1);
		
		userDao.limitDemend(username, paging, root);
	}

}
