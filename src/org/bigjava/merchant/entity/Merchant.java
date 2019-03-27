package org.bigjava.merchant.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.bigjava.collectMerchant.entity.CollectMerchant;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

/**
 * ���̱�
 * @author Administrator
 *
 */
public class Merchant {
	
	private int m_id;// ����id
	private String m_name;// ������
	private String m_image;// ����ͼƬ·��
	private Date m_time;// ���̴�����ʱ��
	private int m_is_freeze;// ���̵�״̬
	
	private User user;// ָ���û����еĵ��
	
	private Set<CollectMerchant> setCollectMerchant = new HashSet<CollectMerchant>();
	
	public Set<CollectMerchant> getSetCollectMerchant() {
		return setCollectMerchant;
	}

	public void setSetCollectMerchant(Set<CollectMerchant> setCollectMerchant) {
		this.setCollectMerchant = setCollectMerchant;
	}

	Set<Product> setProduct = new HashSet<Product>();
	
	public Set<Product> getSetProduct() {
		return setProduct;
	}

	public void setSetProduct(Set<Product> setProduct) {
		this.setProduct = setProduct;
	}

	public int getM_id() {
		return m_id;
	}

	public void setM_id(int m_id) {
		this.m_id = m_id;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_image() {
		return m_image;
	}

	public void setM_image(String m_image) {
		this.m_image = m_image;
	}

	public Date getM_time() {
		return m_time;
	}

	public void setM_time(Date m_time) {
		this.m_time = m_time;
	}

	public int getM_is_freeze() {
		return m_is_freeze;
	}

	public void setM_is_freeze(int m_is_freeze) {
		this.m_is_freeze = m_is_freeze;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Merchant [m_id=" + m_id + ", m_name=" + m_name + ", m_image=" + m_image + ", m_time=" + m_time
				+ ", m_is_freeze=" + m_is_freeze + "]";
	}

}
