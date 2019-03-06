package org.bigjava.entity.product;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.bigjava.entity.categorysecond.CategorySecond;
import org.bigjava.entity.comment.Comment;
import org.bigjava.entity.orderitem.Orderitem;

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
	private String p_image;// 商品图片
	private String p_desc;// 商品描述
	private int sale_volume;// 商品月售量
	private int is_hot;// 是否为热门商品
	private Date p_date;// 商品上架时间

	private CategorySecond categorySecond;// 指向多的一方的类
	
	private Orderitem orderItem;// 一对一指向订单表
	
	private Set<Comment> setCom = new HashSet<Comment>();// 指向Comment类
	
	public Set<Comment> getSetCom() {
		return setCom;
	}

	public void setSetCom(Set<Comment> setCom) {
		this.setCom = setCom;
	}

	public Orderitem getOrderItem() {
		return orderItem;
	}

	public void setOrderItem(Orderitem orderItem) {
		this.orderItem = orderItem;
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

	public String getP_image() {
		return p_image;
	}

	public void setP_image(String p_image) {
		this.p_image = p_image;
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
	
}
