package org.bigjava.product.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.bigjava.comment.biz.CommentBiz;
import org.bigjava.comment.entity.Comment;
import org.bigjava.function.FileImageAction;
import org.bigjava.function.IsEmpty;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProductAction extends ActionSupport {
	
	/* ��Ʒ */
	private Product product;
	// �û���Ϣ
	private User user;
	// ��¼�û�����Ϣ
	private User loginUser;
	// ����
	private Merchant merchant;
	// ����
	private Comment comment;
	private int commentNumber;
	// ��ҳ��
	private Paging paging;
	
	private ProductBiz productBiz;
	private CommentBiz commentBiz;
	
	/* ��ѯ���µ���Ʒ */
	private List<Product> listProductTime;
	/* ��ѯ���ȵ���Ʒ */
	private List<Product> listProductHot;
	/* ��ѯ�Ƽ�����Ʒ  */
	private List<Product> listAllCommentProduct = new ArrayList<Product>();
	private List<Integer> listCommentNumber = new ArrayList<Integer>();
	
	private FileImageAction fileImageAction;
	
	// ��ѯ��Ʒ��Ӧ������
	private List<Comment> listProductAllComment = new ArrayList<Comment>();
	
	public int getCommentNumber() {
		return commentNumber;
	}

	public void setCommentNumber(int commentNumber) {
		this.commentNumber = commentNumber;
	}

	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public List<Comment> getListProductAllComment() {
		return listProductAllComment;
	}

	public void setListProductAllComment(List<Comment> listProductAllComment) {
		this.listProductAllComment = listProductAllComment;
	}

	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Product> getListAllCommentProduct() {
		return listAllCommentProduct;
	}

	public void setListAllCommentProduct(List<Product> listAllCommentProduct) {
		this.listAllCommentProduct = listAllCommentProduct;
	}

	public List<Integer> getListCommentNumber() {
		return listCommentNumber;
	}

	public void setListCommentNumber(List<Integer> listCommentNumber) {
		this.listCommentNumber = listCommentNumber;
	}

	public CommentBiz getCommentBiz() {
		return commentBiz;
	}

	public void setCommentBiz(CommentBiz commentBiz) {
		this.commentBiz = commentBiz;
	}

	public List<Product> getListProductHot() {
		return listProductHot;
	}

	public void setListProductHot(List<Product> listProductHot) {
		this.listProductHot = listProductHot;
	}

	/* �첽У�� */
	private IsEmpty isEmpty = new IsEmpty();
	
	private String  check;
	
	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public FileImageAction getFileImageAction() {
		return fileImageAction;
	}

	public void setFileImageAction(FileImageAction fileImageAction) {
		this.fileImageAction = fileImageAction;
	}

	public List<Product> getListProductTime() {
		return listProductTime;
	}

	public void setListProductTime(List<Product> listProductTime) {
		this.listProductTime = listProductTime;
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
	
	public String showAll() {
		System.out.println("������ҳindex" + loginUser);
		/* ��ѯ���µ���Ʒ */
		listProductTime = productBiz.queryProduct_time();
		listProductTime = listProductTime.subList(0, 6);
		
		if (listProductTime != null && listProductTime.size()!=0) {
			check = "��ȡҳ��ֵ�ɹ�";
		}
		
		/* ��ѯ���ȵ���Ʒ */
		listProductHot = productBiz.queryProduct_hot();
		listProductHot = listProductHot.subList(0, 6);
		/* ��ѯ�Ƽ�����Ʒ */
		List<Comment> listComment = commentBiz.queryCommentByNumberOneToTwelve();
		System.out.println("�Ƽ�����Ʒ" + listComment);
		
		listAllCommentProduct = productBiz.queryAllCommentProduct();
		System.out.println("���е���Ʒ" + listAllCommentProduct);
		for (int i=0; i<listAllCommentProduct.size(); i++) {
			int commentNumber = 0;
			for (int j=0; j<listComment.size(); j++) {
				if (listAllCommentProduct.get(i).getP_id() == listComment.get(j).getProduct().getP_id()) {
					commentNumber++;
				}
			}
			listCommentNumber.add(commentNumber);
		}
		
		int number = 0;
		List<Product> listProduct = new ArrayList<Product>();
		for (int i=0; i<listCommentNumber.size()-1; i++) {
			for (int j=0; j<listCommentNumber.size()-1-i; j++) {
				if (listCommentNumber.get(j)<listCommentNumber.get(j+1)) {
					listProduct.add(listAllCommentProduct.get(j));
					number = listCommentNumber.get(j);
					
					listAllCommentProduct.set(j, listAllCommentProduct.get(j+1));
					listCommentNumber.set(j, listCommentNumber.get(j+1));
					
					listAllCommentProduct.set(j+1, listProduct.get(0));
					listCommentNumber.set(j+1, number);
				}
			}
			listProduct.clear();
		}
		
		return SUCCESS;
	}
	
	// ͨ����Ʒid��ѯ��Ʒ����
	public String idQueryProduct() {
		System.out.println("������Ʒ����");
		product = productBiz.queryProduct_id(product.getP_id());
		merchant = product.getMerchant();
		user = merchant.getUser();
		
		// ��ѯ���������µ���Ʒ
		listProductTime = productBiz.queryMerchantProduct_time(merchant.getM_id());
		listProductTime = listProductTime.subList(0, 2);
		
		// ��ѯ���������ȵ���Ʒ
		listProductHot = productBiz.queryMerchantProduct_hot(merchant.getM_id());
		listProductHot = listProductHot.subList(0, 2);
		
		// ��ѯ��Ʒ��Ӧ������
		listProductAllComment = commentBiz.queryProductCommentNumber(product.getP_id(), paging.getPresentPage());
		commentNumber = listProductAllComment.size();
		return "idQueryProduct";
	}

}
