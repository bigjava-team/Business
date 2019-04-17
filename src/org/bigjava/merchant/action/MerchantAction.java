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
	private UserBiz userBiz;// �û��� biz
	private OrdersBiz ordersBiz;// ������biz
	private User user;// �û�����Ϣ
	private User loginUser;// ��¼���û���Ϣ
	private Orders orders;// ������Ϣ
	private FileImageAction fileImageAction;// �ϴ�һ��ͼƬ�ķ���
	
	private String searchText;// ģ��������ֵ

	private Paging paging;// ��ҳ�ķ���

	private List<Orders> listOrders;// ��ѯ���Ķ���

	private int merchant_id;// ����id

	private List<Product> merchantProductTime;
	private List<Product> merchantProductTop;
	private List<Merchant> listAllMerchant;// ����Ա��ѯ��ȫ������
	private List<Product> listMerchantProduct;// �����ڵ���Ʒ
	
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
	 * ע�����
	 * 
	 * @throws IOException
	 */
	public String registerMerchant() throws IOException {
		System.out.println("��ʼע�����" + loginUser.getUsername());
		System.out.println("ss" + fileImageAction.getFileImage());
		// �ϴ�ͼƬ
		fileImageAction.fileImage();
		user = userBiz.queryUsernameUser(loginUser.getUsername());
		merchant.setM_time(new Date());// ����ע��ʱ��
		merchant.setM_is_freeze(1);// ����״̬
		merchant.setM_image(fileImageAction.getFileImageFileName());
		merchantBiz.registerMerchant(merchant, user);
		
		User users = user;
		users.setRoot(2);
		userBiz.updateUser(user, users);
		return "registerMerchantSuccess";
	}

	/**
	 * ͨ������ID��ѯ����
	 */
	public String queryMerchantById() {
		merchant = merchantBiz.queryMerchant(merchant.getM_id());
		ActionContext.getContext().getSession().put("merchant", merchant);
		return "queryMerchantById";
	}

	/**
	 * ɾ������
	 */
	public String deleteMerchant() {
		merchantBiz.deleteMerchant(merchant);
		return "deleteMerchantSuccess";
	}

	/**
	 * �޸ĵ���
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
	 * ��ת���ҵĵ���
	 */
	public String gotoMerchant() {

		System.out.println("MerchantAction������ת���ҵĵ���>gotoMerchant()..");

		User u = userBiz.queryUsernameUser(loginUser.getUsername());
		Merchant m  = u.getMerchant();
		System.out.println("m"+m);
		if (m == null) {
			return "addMerchant";
		} else if(m.getM_is_freeze() == 1) {
			System.out.println("����������");
			return "merchantLoginError";
		} else if(m.getM_is_freeze() == 3) {
			System.out.println("�����Ѷ���");
			return "merchantLoginError";
		}
		return "gotoMerchant";
	}

	/**
	 * ͨ������ID��ѯ���� ��ѯ���̵Ĺ���
	 */
	public String getMerchantNotice() {
		merchant = merchantBiz.queryMerchant(merchant.getM_id());
		ActionContext.getContext().getSession().put("merchantNotice", merchant);
		return "getMerchantNotice";
	}

	/**
	 * ��ӵ��̹���
	 */
	public String addNotice() {
		System.out.println("MerchantAction.....addNotice().");
		Merchant merchants = merchantBiz.queryMerchant(merchant.getM_id());
		merchants.setNotice(merchant.getNotice());
		merchantBiz.addNotice(merchants);
		return "updateMerchantOrdersState";
	}

	/**
	 * �޸ĵ��̹���
	 */
	public String updateNotice() {
		System.out.println("�޸ĵ��̹���");
		Merchant updateMerchantNotice = merchantBiz.queryMerchant(merchant.getM_id());
		updateMerchantNotice.setNotice(merchant.getNotice());
		merchantBiz.updateNotice(updateMerchantNotice);
		return "updateNotice";
	}

	/**
	 * ��ѯ��ҵĶ�������
	 */
	public String queryMerchantOrders() {
		System.out.println("��ʼ��ѯ��ҵĶ�������");
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
		System.out.println("��������" + listOrders);
		return "queryMerchantOrders";
	}

	/**
	 * �޸���ҵĶ�����״̬
	 */
	public String updateMerchantOrdersState() {
		System.out.println("�޸���ҵĶ�����״̬" + merchant.getM_id());
		merchant_id = merchant.getM_id();
		Orders merchantOrders = ordersBiz.queryOrders_id(orders.getO_id());
		if (merchantOrders.getState() == 2) {// ֧��״̬
			merchantOrders.setState(3);// ������״̬
			merchantBiz.updateOrdersState(merchantOrders);
		}
		return "updateMerchantOrdersState";
	}

	/**
	 * ��ѯ������Ʒ
	 */
	public String showMerchantProduct() {
		System.out.println("������ҳMerchantAction.....showMerchantProduct");
		/* ��ѯ���µ���Ʒ */
		merchantProductTime = merchantBiz.queryProductMerchantTime();
		merchantProductTime = merchantProductTime.subList(0, 5);

		/* ��ѯ���ȵ���Ʒ */
		merchantProductTop = merchantBiz.queryProductMerchantTop();
		merchantProductTop = merchantProductTime.subList(0, 5);

		return "success";
	}
	
	/**
	 * �곤��ģ����������
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
	 * ģ����ѯ�����ڵ���Ʒ
	 */
	public String mIdQueryAllProduct() {
		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
		}
		int number = merchantBiz.mIdQueryAllProductNumber(searchText, merchant.getM_id());
		System.out.println("��Ʒ ��"+number);
		System.out.println("����id"+merchant.getM_id());
		paging = new Paging(paging.getPresentPage(), number, 5);
		listMerchantProduct = merchantBiz.mIdQueryAllProduct(paging, searchText, merchant.getM_id());
		System.out.println(listMerchantProduct);
		return "mIdQueryAllProduct";
	}
	
	// ��ת���޸ĵ��̵�ҳ��
	public String skipUpdateMerchantList() {
		merchant = merchantBiz.queryMerchant(merchant.getM_id());
		return "skipUpdateMerchantList";
	}
	
	// �޸ĵ�������
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
	
	// �����û���ģ����ҳ��ѯ����
	public String merchantLikeUsernameLimitQueryOrders() {
		System.out.println("��ʼ��ѯ");
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
		System.out.println("��������" + listOrders);
		return "merchantLikeUsernameLimitQueryOrders";
	}
}
