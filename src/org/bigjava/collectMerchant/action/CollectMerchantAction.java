package org.bigjava.collectMerchant.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.bigjava.collectMerchant.biz.CollectMerchantBiz;
import org.bigjava.collectMerchant.entity.CollectMerchant;
import org.bigjava.function.FileImageAction;
import org.bigjava.function.Paging;
import org.bigjava.function.queryCategorySecond.QueryListProduct;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionSupport;

public class CollectMerchantAction extends ActionSupport {
	
	private Paging paging;
	private User loginUser;
	private Merchant merchant;
	private CollectMerchant collectMerchant;
	private FileImageAction fileImageAction;
	
	private List<QueryListProduct> listQueryListProduct;

	private CollectMerchantBiz collectMerchantBiz;
	private UserBiz userBiz;
	private ProductBiz productBiz;
	
	private List<CollectMerchant> listCollectMerchant;
	private List<Product> listProduct;
	
	public List<QueryListProduct> getListQueryListProduct() {
		return listQueryListProduct;
	}

	public void setListQueryListProduct(List<QueryListProduct> listQueryListProduct) {
		this.listQueryListProduct = listQueryListProduct;
	}

	public ProductBiz getProductBiz() {
		return productBiz;
	}

	public void setProductBiz(ProductBiz productBiz) {
		this.productBiz = productBiz;
	}

	public List<Product> getListProduct() {
		return listProduct;
	}

	public void setListProduct(List<Product> listProduct) {
		this.listProduct = listProduct;
	}

	public FileImageAction getFileImageAction() {
		return fileImageAction;
	}

	public void setFileImageAction(FileImageAction fileImageAction) {
		this.fileImageAction = fileImageAction;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public List<CollectMerchant> getListCollectMerchant() {
		return listCollectMerchant;
	}

	public void setListCollectMerchant(List<CollectMerchant> listCollectMerchant) {
		this.listCollectMerchant = listCollectMerchant;
	}

	public CollectMerchant getCollectMerchant() {
		return collectMerchant;
	}

	public void setCollectMerchant(CollectMerchant collectMerchant) {
		this.collectMerchant = collectMerchant;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	public void setCollectMerchantBiz(CollectMerchantBiz collectMerchantBiz) {
		this.collectMerchantBiz = collectMerchantBiz;
	}
	
	// �ղص��̵ķ���
	public String collectMerchant() {
		System.out.println("��ʼ�ղص���"+loginUser + "," + merchant);
		boolean flag = collectMerchantBiz.queryUserMerchantCollectMerchant(loginUser.getU_id(), merchant.getM_id());
		if (flag) {
			System.out.println("�õ������ղ�");
			return SUCCESS;
		}
		loginUser = userBiz.query(loginUser.getU_id());
		collectMerchant = new CollectMerchant(loginUser, merchant);
		collectMerchantBiz.addCollectMerchant(collectMerchant);
		return SUCCESS;
	}
	
	// ��ҳ��ѯ�û��ղصĵ���
	public String queryUserCollectMerchant() {
		System.out.println("��ʼ��ѯ�û��ղصĵ���");
		listQueryListProduct = new ArrayList<QueryListProduct>();
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		int number = collectMerchantBiz.queryCollectMerchant_number(loginUser.getU_id());
		paging  = new Paging(paging.getPresentPage(), number, 5);
		listCollectMerchant = collectMerchantBiz.queryCollectMerchant_Uid(loginUser.getU_id(), paging);// ��ѯ���ղصĵ���
		
		for (int i=0; i<listCollectMerchant.size(); i++) {
			int m_id = listCollectMerchant.get(i).getMerchant().getM_id();
			List<Product> listProduct = productBiz.setQueryMerchantProduct_time(m_id);
			if (listProduct.size() < 4 && listProduct.size() > 0) {
				listProduct = listProduct.subList(0, listProduct.size());
			} else {
				listProduct = listProduct.subList(0, 4);
			}
			QueryListProduct queryListProduct = new QueryListProduct();
			queryListProduct.setListProduct(listProduct);
			listQueryListProduct.add(queryListProduct);// ��ѯ�ղص��������Ʒ
		}
		System.out.println(listQueryListProduct);
		return "queryUserCollectMerchant";
	}
	
}
