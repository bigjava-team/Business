package org.bigjava.collectProduct.action;

import java.util.List;

import org.bigjava.collectProduct.biz.CollectProductBiz;
import org.bigjava.collectProduct.entity.CollectProduct;
import org.bigjava.function.FileImageAction;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.product.entity.Product;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionSupport;

public class CollectProductAction extends ActionSupport {

	private Product product;
	private User loginUser;
	private Paging paging;
	private List<CollectProduct> listCollectProducts;
	private FileImageAction fileImageAction;
	
	private UserBiz userBiz;
	private CollectProductBiz collectProductBiz;
	private IsEmpty isEmpty;
	
	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public void setIsEmpty(IsEmpty isEmpty) {
		this.isEmpty = isEmpty;
	}

	public FileImageAction getFileImageAction() {
		return fileImageAction;
	}

	public void setFileImageAction(FileImageAction fileImageAction) {
		this.fileImageAction = fileImageAction;
	}

	public List<CollectProduct> getListCollectProducts() {
		return listCollectProducts;
	}

	public void setListCollectProducts(List<CollectProduct> listCollectProducts) {
		this.listCollectProducts = listCollectProducts;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public void setCollectProductBiz(CollectProductBiz collectProductBiz) {
		this.collectProductBiz = collectProductBiz;
	}

	/**
	 * �ղ���Ʒ
	 */
	public String collectProduct() {
		System.out.println("�ղ���Ʒ" + product.getP_id());
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		boolean flag = collectProductBiz.queryCollectUser_id(loginUser.getU_id(), product.getP_id());
		if (flag) {
			System.out.println("���ղش��û�");
		} else {
			CollectProduct collectProduct = new CollectProduct(loginUser, product);
			collectProductBiz.addCollectProduct(collectProduct);// �ղ���Ʒ
		}
		return SUCCESS;
	}
	
	/**
	 * ��ѯ�û��ղص���Ʒ
	 */
	public String queryUserCollectProduct() {
		if (loginUser == null || loginUser.equals("")) {
			return "login";
		}
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		int number = collectProductBiz.queryCollectProduct_number(loginUser.getU_id());
		paging = new Paging(paging.getPresentPage(), number, 15);
		listCollectProducts = collectProductBiz.queryCollectProdct_Uid(loginUser.getU_id(), paging);
		System.out.println(listCollectProducts);
		return "queryUserCollectProduct";
	}
}
