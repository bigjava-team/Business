package org.bigjava.product.action;

import java.util.List;
import java.util.Map;

import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ��䁶���Ʒ�Ĳ������������Ʒ��ɾ����Ʒ��
 * 
 * @author Mr.Man
 *
 */
public class MerchantProductAction extends ActionSupport {

	private IsEmpty isEmpty = new IsEmpty();
	private Product product;
	private ProductBiz productBiz;
	private CategorySecondBiz categorySecondBiz;
	private String searchText; // �����Ĳ���ֵ

	private Paging paging;// ����Paging��

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	private Map<String, Object> session;// ����Map����

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

	public void setProductBiz(ProductBiz productBiz) {
		this.productBiz = productBiz;
	}

	public void setCategorySecondBiz(CategorySecondBiz categorySecondBiz) {
		this.categorySecondBiz = categorySecondBiz;
	}

	// ��ѯ���е���Ʒ
	public String findAll() {

		System.out.println("����MerchantProductAction....showAll����");
		session = ActionContext.getContext().getSession();

		if (isEmpty.isEmpty(searchText)) {
			searchText = "";
		}
		// ����������������Ȩ�޲�ѯ��������������
		int totalNumber = productBiz.queryProductNumber(searchText);
		// ��ǰҳ��
		int presentPage = paging.getPresentPage();

		// �������������û��б�
		List<Product> productList = productBiz.queryAllProduct(searchText, paging);

		// ����������session��
		System.out.println(productList);
		session.put("showProduct", productList);
		session.put("paging", paging);
		session.put("searchText", searchText);

		return "findAll";
	}

	// ��ת�����ҳ��ķ���:
	public String addPage() {
		// ��ѯ���еĶ�������:
//		List<CategorySecond> csList = categorySecondBiz.showAllCategorySecond();
		// �����������������ʾ��ҳ����
//		ActionContext.getContext().getValueStack().set("csList", csList);
		// ҳ����ת
		return "addPageSuccess";
	}

}
