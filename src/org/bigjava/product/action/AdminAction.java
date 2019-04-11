package org.bigjava.product.action;

import java.util.List;
import java.util.Map;

import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {

	private IsEmpty isEmpty = new IsEmpty();
	// ע����Ʒ
	private Product product;
	private ProductBiz productBiz;
	private CategorySecond categorySecond;
	private Merchant merchant;
	private User user;

	private CategorySecondBiz categorySecondBiz;
	private String searchText; // �����Ĳ���ֵ
	private Paging paging;// ����Paging��
	private Map<String, Object> session;// ����Map����

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public ProductBiz getProductBiz() {
		return productBiz;
	}

	public void setProductBiz(ProductBiz productBiz) {
		this.productBiz = productBiz;
	}

	public CategorySecond getCategorySecond() {
		return categorySecond;
	}

	public void setCategorySecond(CategorySecond categorySecond) {
		this.categorySecond = categorySecond;
	}

	public CategorySecondBiz getCategorySecondBiz() {
		return categorySecondBiz;
	}

	public void setCategorySecondBiz(CategorySecondBiz categorySecondBiz) {
		this.categorySecondBiz = categorySecondBiz;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	private List<Product> productList;// ���������Ʒ
	private List<Product> productLists;// ������������е���Ʒ

	public List<Product> getProductLists() {
		return productLists;
	}

	public void setProductLists(List<Product> productLists) {
		this.productLists = productLists;
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

	// ����ҳ�Ĳ�ѯ��Ʒ��ִ�еķ���
	public String adminFindAll() {
		System.out.println("AdminAction....adminFindAll().");
		session = ActionContext.getContext().getSession();

		int u_root = 0;
		if (user.getRoot() != 0) {
			u_root = user.getRoot();
		}

		System.out.println("�û�Ȩ��Ϊ��" + u_root);
		System.out.println("������ֵ" + searchText);

		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
		}
		// ����������������Ȩ�޲�ѯ��������������
		int totalNumber = productBiz.queryProductNumber(searchText, merchant.getM_id(), 0);

		// ��ǰҳ��
		int presentPage = paging.getPresentPage();
		System.out.println("��ǰҳ" + presentPage);

		paging = new Paging(presentPage, totalNumber, 5);

		productList = productBiz.queryAllProduct(searchText, paging, merchant.getM_id(), 0);

		// ����������session��
		System.out.println(productList);
		session.put("paging", paging);
		session.put("searchText", searchText);

		return "adminFindAll";
	}

	// ��ҳ��ѯ�����е���Ʒ
	public String showToProduct() {
		System.out.println("AdminAction....adminFindAll().");
		session = ActionContext.getContext().getSession();

		int u_root = 0;
		if (user.getRoot() != 0) {
			u_root = user.getRoot();
		}

		System.out.println("�û�Ȩ��Ϊ��" + u_root);
		System.out.println("������ֵ" + searchText);

		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
		}
		// ������������������Ʒ��״̬��ѯ��������������
		int totalNumber = productBiz.queryProductNumber(searchText, 0, 3);

		System.out.println("�����е���Ʒ����"+totalNumber);
		// ��ǰҳ��
		int presentPage = paging.getPresentPage();
		System.out.println("��ǰҳ" + presentPage);

		paging = new Paging(presentPage, totalNumber, 5);

		productLists = productBiz.queryAllProduct(searchText, paging, 0,3);

		// ����������session��
		System.out.println(productLists);
		session.put("paging", paging);
		session.put("searchText", searchText);

		return "showToProduct";
	}

	// �¼���Ʒ
	public String adminDeleteProduct() {
		System.out.println("����adminAction....adminDeleteProduct()");
		product = productBiz.queryProduct_id(product.getP_id());
		System.out.println("product" + product);
		productBiz.deleteProduct(product);
		return "adminDeleteProduct";
	}

	// �鿴��Ʒ��Ϣ
	public String getProductById() {
		System.out.println("����adminAction....getProductById()");
		product = productBiz.queryProduct_id(product.getP_id());
		System.out.println("product" + product);
		ActionContext.getContext().getSession().put("product", product);
		return "getProductSuccess";
	}

}
