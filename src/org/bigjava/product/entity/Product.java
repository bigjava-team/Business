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

/**
 * 商品表
 * @author Administrator
 *
 */
public class Product {
	
	private int p_id;// 商品id
	private String p_name;// 商品名
	private double p_price;// 商品价格
	private double market;// 市场价格
	private String p_desc;// 商品描述
	private int sale_volume;// 商品月售量
	private int is_hot;// 是否为热门商品
	private Date p_date;// 商品上架时间
	private int p_freeze;// 商品的状态(1、上架 2、下架)

	private CategorySecond categorySecond;// 一对多指向二级分类的一方
	
	private Merchant merchant;// 多对一指向店铺类
	
	private Set<Comment> setCom = new HashSet<Comment>();// 指向Comment类
	
	private Set<Orderitem> setOrderitem = new HashSet<Orderitem>();// 指向订单项类
	
	private Set<Images> setImages = new HashSet<Images>();// 指向Images类
	
	private Set<CollectProduct> setCollectProduct = new HashSet<CollectProduct>();// 指向CollectProduct类
	
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

	public int getIs_hot() {
		return is_hot;
	}

	public void setIs_hot(int is_hot) {
		this.is_hot = is_hot;
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
		return "Product [p_id=" + p_id + ", p_name=" + p_name + ", p_price=" + p_price + ", market=" + market
				+ ", p_desc=" + p_desc + ", sale_volume=" + sale_volume + ", is_hot=" + is_hot
				+ ", p_date=" + p_date + ", p_freeze=" + p_freeze + "]";
	}
}
