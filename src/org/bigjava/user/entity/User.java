package org.bigjava.user.entity;

import java.util.HashSet;
import java.util.Set;

import org.bigjava.addr.entity.Addr;
import org.bigjava.comment.entity.Comment;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orders.entity.Orders;

/**
 * 用户表
 * 
 * @author Administrator
 *
 */
public class User {

	private int u_id;// 用户id
	private String username;// 用户用户名
	private String password;// 用户密码
	private String sex;// 用户性别
	private String u_name;// 用户真实姓名
	private String email;// 用户邮箱
	private String phone;// 用户电话号码
	private int root;// 用户权限
	private String image;// 用户头像图片路径
	private int u_is_freeze;// 用户当前状态

	// 异步校验返回值
	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	private Set<Addr> setAddr = new HashSet<Addr>();// 指向用户地址类

	private Set<Orders> setOrders = new HashSet<Orders>();// 指向订单类

	private Set<Comment> setCom = new HashSet<Comment>();// 指向评论类

	private Merchant merchant;

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

	public Set<Orders> getSetOrders() {
		return setOrders;
	}

	public void setSetOrders(Set<Orders> setOrders) {
		this.setOrders = setOrders;
	}

	public Set<Addr> getSetAddr() {
		return setAddr;
	}

	public void setSetAddr(Set<Addr> setAddr) {
		this.setAddr = setAddr;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getRoot() {
		return root;
	}

	public void setRoot(int root) {
		this.root = root;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getU_is_freeze() {
		return u_is_freeze;
	}

	public void setU_is_freeze(int u_is_freeze) {
		this.u_is_freeze = u_is_freeze;
	}

	/**
	 * 设置toString方法，防止参数乱码
	 */
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", username=" + username + ", password=" + password + ", sex=" + sex + ", u_name="
				+ u_name + ", email=" + email + ", phone=" + phone + ", root=" + root + ", image=" + image
				+ ", u_is_freeze=" + u_is_freeze + "]";
	}
}
