package org.bigjava.product.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.FileAction;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.image.biz.ImageBiz;
import org.bigjava.image.entity.Images;
import org.bigjava.merchant.biz.MerchantBiz;
import org.bigjava.merchant.entity.Merchant;
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
	private CategorySecond categorySecond;

	private CategorySecondBiz categorySecondBiz;
	private Merchant merchant;
	private String searchText; // �����Ĳ���ֵ
	
	private FileAction fileAction;// �ϴ�ͼƬ�Ĺ�����
	
	private ImageBiz imagesBiz;// ���ö���ƷͼƬ������ҵ���߼���
	private Images images;// �����ƷͼƬ����
	
	private List<Product> productList;// ��Ŷ�Ӧ�����ڵ�������Ʒ
	
	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

	public FileAction getFileAction() {
		return fileAction;
	}

	public void setFileAction(FileAction fileAction) {
		this.fileAction = fileAction;
	}

	public Images getImages() {
		return images;
	}

	public void setImages(Images images) {
		this.images = images;
	}

	public ImageBiz getImagesBiz() {
		return imagesBiz;
	}

	public void setImagesBiz(ImageBiz imagesBiz) {
		this.imagesBiz = imagesBiz;
	}

	private Paging paging;// ����Paging��
	
	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

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

	public void setCategorySecond(CategorySecond categorySecond) {
		this.categorySecond = categorySecond;
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
		int totalNumber = productBiz.queryProductNumber(searchText, merchant.getM_id());
		// ��ǰҳ��
		int presentPage = paging.getPresentPage();
		System.out.println("��ǰҳ" + presentPage);

		paging = new Paging(presentPage, totalNumber, 2);

		// ��������������Ʒ�б�
		productList = productBiz.queryAllProduct(searchText, paging, merchant.getM_id());

		// ����������session��
		System.out.println(productList);
		session.put("paging", paging);
		session.put("searchText", searchText);

		return "findAll";
	}

	// ��ת�����ҳ��ķ���:
	public String addPage() {
		// ��ѯ���еĶ�������:
		List<CategorySecond> csList = categorySecondBiz.showCategorySecond();
		// �����������������ʾ��ҳ����
		ActionContext.getContext().getValueStack().set("csList", csList);
		// ҳ����ת
		return "addPageSuccess";
	}

	// ������Ʒ�ķ���:
	public String save() {
		// ���ύ��������ӵ����ݿ���.
		product.setP_date(new Date());
		product.setP_freeze(3);
		
		System.out.println("�ϴ�ͼƬ" + fileAction);
		
		fileAction.image(product.getP_name());
		
		product.setP_image("productImage/" + fileAction.getMyFileFileName());
		
		productBiz.addProduct(product, merchant, categorySecond);// �����Ʒ��Ϣ
		
		return "saveSuccess";
	}

	// ɾ����Ʒ�ķ���:
	public String delete() {
		// ����id��ѯ��Ʒ��Ϣ
		product = productBiz.queryProduct_id(product.getP_id());
		// ҳ����ת
		return "deleteSuccess";
	}

	// ����ID��ȡ��Ʒ��Ϣ
	public String getProductById() {
		System.out.println("����MerchantProductAction...getProductById");
		System.out.println("p_id"+ product.getP_id());
		productBiz.queryProduct_id(product.getP_id());
		return "getProductByIdSuccess";
	}

	// �޸���Ʒ�ķ���
	public String updateProduct() {
		System.out.println("����MerchantProductAction....updateProduct()");
		//��ѯ���ݿ�����Ʒ����Ϣ
		product = productBiz.queryProduct_id(product.getP_id());
		
		Product updateProduct = null; // �޸ĵĶ�������
		
		productBiz.updateProduct(product, updateProduct);
		return "updateProductSuccess";
	}

}
