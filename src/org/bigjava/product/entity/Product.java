package org.bigjava.product.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.collectProduct.entity.CollectProduct;
import org.bigjava.comment.entity.Comment;
import org.bigjava.image.entity.Images;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.orders.entity.Orders;
import org.bigjava.productAge.entity.ProductAge;

/**
 * ��Ʒ��
 * 
 * @author Administrator
 *
 */
public class Product {

	private int p_id;// ��Ʒid
	private String p_name;// ��Ʒ��
	private double p_price;// ��Ʒ�۸�
	private String p_image;// ��Ʒ��ҳͼƬ
	private int p_repertory;// ��Ʒ���
	private double market;// �г��۸�
	private String p_desc;// ��Ʒ����
	private int sale_volume;// ��Ʒ������
	private Date p_date;// ��Ʒ�ϼ�ʱ��
	private int p_freeze;// ��Ʒ��״̬(1���ϼ� 2���¼�3������״̬)

	private CategorySecond categorySecond;// һ�Զ�ָ����������һ��

	private Merchant merchant;// ���һָ�������

	private Set<Comment> setCom = new HashSet<Comment>();// ָ��Comment��

	private Set<Orderitem> setOrderitem = new HashSet<Orderitem>();// ָ�򶩵�����

	private Set<Images> setImages = new HashSet<Images>();// ָ��Images��

	private Set<CollectProduct> setCollectProduct = new HashSet<CollectProduct>();// ָ��CollectProduct��
	
	public int getP_repertory() {
		return p_repertory;
	}

	public void setP_repertory(int p_repertory) {
		this.p_repertory = p_repertory;
	}

	public String getP_image() {
		return p_image;
	}

	public void setP_image(String p_image) {
		this.p_image = p_image;
	}

	public Set<CollectProduct> getSetCollectProduct() {
		return setCollectProduct;
	}

	public void setSetCollectProduct(Set<CollectProduct> setCollectProduct) {
		this.setCollectProduct = setCollectProduct;
	}

	public Set<Images> getSetImages() {
		return setImages;
	}

	public void setSetImages(Set<Images> setImages) {
		this.setImages = setImages;
	}

	public Set<Orderitem> getSetOrderitem() {
		return setOrderitem;
	}

	public void setSetOrderitem(Set<Orderitem> setOrderitem) {
		this.setOrderitem = setOrderitem;
	}

	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	public Set<Comment> getSetCom() {
		return setCom;
	}

	public void setSetCom(Set<Comment> setCom) {
		this.setCom = setCom;
	}

	public void setP_price(double p_price) {
		this.p_price = p_price;
	}

	public void setMarket(double market) {
		this.market = market;
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public Double getP_price() {
		return p_price;
	}

	public void setP_price(Double p_price) {
		this.p_price = p_price;
	}

	public Double getMarket() {
		return market;
	}

	public void setMarket(Double market) {
		this.market = market;
	}

	public String getP_desc() {
		return p_desc;
	}

	public void setP_desc(String p_desc) {
		this.p_desc = p_desc;
	}

	public int getSale_volume() {
		return sale_volume;
	}

	public void setSale_volume(int sale_volume) {
		this.sale_volume = sale_volume;
	}

	public Date getP_date() {
		return p_date;
	}

	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}

	public CategorySecond getCategorySecond() {
		return categorySecond;
	}

	public void setCategorySecond(CategorySecond categorySecond) {
		this.categorySecond = categorySecond;
	}

	public int getP_freeze() {
		return p_freeze;
	}

	public void setP_freeze(int p_freeze) {
		this.p_freeze = p_freeze;
	}

	@Override
	public String toString() {
		return "Product [p_id=" + p_id + ", p_name=" + p_name + ", p_price=" + p_price + ", p_image=" + p_image
				+ ", p_repertory=" + p_repertory + ", market=" + market + ", p_desc=" + p_desc + ", sale_volume="
				+ sale_volume + ", p_date=" + p_date + ", p_freeze=" + p_freeze + "]";
	}

}
