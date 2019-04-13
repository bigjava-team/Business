package org.bigjava.merchant.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.bigjava.function.FileImageAction;
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

	private Merchant merchant = new Merchant();
	private MerchantBiz merchantBiz;
	private UserBiz userBiz;// �û��� biz
	private OrdersBiz ordersBiz;// ������biz
	private User user;// �û�����Ϣ
	private User loginUser;// ��¼���û���Ϣ
	private Orders orders;// ������Ϣ
	private FileImageAction fileImageAction;// �ϴ�һ��ͼƬ�ķ���
	
	private Paging paging;// ��ҳ�ķ���
	
	private List<Orders> listOrders;// ��ѯ���Ķ���
	
	private int merchant_id;// ����id
	
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
	 * @throws IOException 
	 */
	public String registerMerchant() throws IOException {
		System.out.println("��ʼע�����" + loginUser.getUsername());
		System.out.println("ss"+fileImageAction.getFileImage());
		// �ϴ�ͼƬ
		fileImageAction.fileImage();
		user = userBiz.queryUsernameUser(loginUser.getUsername());
		merchant.setM_time(new Date());// ����ע��ʱ��
		merchant.setM_is_freeze(1);// ����״̬
		merchant.setM_image(fileImageAction.getFileImageFileName());
		merchantBiz.registerMerchant(merchant, user);
		return "registerMerchantSuccess";
	}

	/**
	 * ͨ������ID��ѯ����
	 */
	public String getMerchantById() {
		merchantBiz.queryMerchant(merchant.getM_id());
		return "getMerchantByIdSuccess";
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
//		Merchant updateMerchant ;
//		merchantBiz.updateMerchant(merchant, updateMerchant);
		return "updateMerchantSuccess";
	}

	/**
	 * ��ת���ҵĵ���
	 */
	public String gotoMerchant() {
		System.out.println("MerchantAction������ת���ҵĵ���>gotoMerchant()..");
		return "gotoMerchant";
	}
	
	/**
	 * ��ӵ��̹���
	 */
	public String addNotice() {
		System.out.println("MerchantAction.....addNotice().");
		merchantBiz.addNotice(merchant);
		return "addNotice";
	}
	
	/**
	 * �޸ĵ��̹���
	 */
	public String updateNotice() {
		System.out.println("�޸ĵ��̹���");
		merchantBiz.updateNotice(merchant);
		return "updateNotice";
	}
	
	/**
	 * ��ѯ��ҵĶ�������
	 */
	public String queryMerchantOrders() {
		System.out.println("��ʼ��ѯ��ҵĶ�������");
		listOrders = merchantBiz.queryListOrders(merchant.getM_id());
		int divisor = listOrders.size()/2;
		int remainder = listOrders.size()%2;
		if (remainder == 0) {
			paging.setPage(divisor);// ���ҳ��
		} else if (remainder !=0) {
			paging.setPage(divisor+1);// ���ҳ��
		}
		if (paging.getPresentPage() <= 0) {
			paging.setPresentPage(1);
		} else if (paging.getPresentPage() > paging.getPage() && paging.getPage() > 0) {
			paging.setPresentPage(paging.getPage());
		} else {
			paging.setPresentPage(1);
		}
		
		if (listOrders.size()!=0) {
			if (divisor < paging.getPresentPage() && remainder!=0) {
				listOrders = listOrders.subList((paging.getPresentPage()-1)*2, remainder+(divisor*2));
			} else {
				listOrders = listOrders.subList((paging.getPresentPage()-1)*2, paging.getPresentPage()*2);
			}
		}
		System.out.println("��������"+listOrders);
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
}

