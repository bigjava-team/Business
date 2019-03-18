package org.bigjava.user.entity;

import java.util.HashSet;
import java.util.Set;

import org.bigjava.addr.entity.Addr;
import org.bigjava.comment.entity.Comment;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.orders.entity.Orders;

/**
 * �û���
 * 
 * @author Administrator
 *
 */
public class User {

	private int u_id;// �û�id
	private String username;// �û��û���
	private String password;// �û�����
	private String sex;// �û��Ա�
	private String u_name;// �û���ʵ����
	private String email;// �û�����
	private String phone;// �û��绰����
	private int root;// �û�Ȩ��
	private String image;// �û�ͷ��ͼƬ·��
	private int u_is_freeze;// �û���ǰ״̬
	
	private String result; //�����첽У��ֵ

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	

	private Set<Addr> setAddr = new HashSet<Addr>();// ָ���û���ַ��

	private Set<Orders> setOrders = new HashSet<Orders>();// ָ�򶩵���

	private Set<Comment> setCom = new HashSet<Comment>();// ָ��������

	private Merchant merchant;// ָ���û����ĵ�����
	
	private Set<Merchant> collectMerchant = new HashSet<Merchant>();// ָ���û����ղصĵ���
	
	private Set<Orderitem> setOrderItem = new HashSet<Orderitem>();// ָ�򶩵�����
	
	public Set<Merchant> getCollectMerchant() {
		return collectMerchant;
	}

	public void setCollectMerchant(Set<Merchant> collectMerchant) {
		this.collectMerchant = collectMerchant;
	}

	public Set<Orderitem> getSetOrderItem() {
		return setOrderItem;
	}

	public void setSetOrderItem(Set<Orderitem> setOrderItem) {
		this.setOrderItem = setOrderItem;
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
	 * ����toString��������ֹ��������
	 */
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", username=" + username + ", password=" + password + ", sex=" + sex + ", u_name="
				+ u_name + ", email=" + email + ", phone=" + phone + ", root=" + root + ", image=" + image
				+ ", u_is_freeze=" + u_is_freeze + "]";
	}
}
