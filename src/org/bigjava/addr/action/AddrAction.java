package org.bigjava.addr.action;

import org.bigjava.addr.biz.AddrBiz;
import org.bigjava.addr.entity.Addr;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AddrAction extends ActionSupport implements ModelDriven<Addr> {

	// ע��Addrʵ��
	private Addr addr = new Addr();

	@Override
	public Addr getModel() {
		// TODO Auto-generated method stub
		return addr;
	}

	// ע��addrBiz
	private AddrBiz addrBiz;

	public void setAddrBiz(AddrBiz addrBiz) {
		this.addrBiz = addrBiz;
	}

	// ע���û�Userʵ��
	private User user;

	public void setUser(User user) {
		this.user = user;
	}

	// ע��UserBiz
	private UserBiz userBiz;

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	/**
	 * ����ջ���ַ
	 */
	public String addAddress() {
		int id = user.getU_id();
		user = userBiz.query(id);
		
		addrBiz.addAddr(addr, user);
		return "addAddressSuccess";
	}

	/**
	 * ����ID��ѯ�û��ջ���ַ
	 */
	public String queryAddrById() {
		System.out.println("����AddrAction...queryAddrById().");
		addr = addrBiz.queryAddr_id(addr.getA_id());
		return "queryAddrByIdSuccess";
	}

	/**
	 * �޸��ջ���ַ
	 */
	public String updateAddr() {
		Addr updateAddr = new Addr();
		
		addrBiz.updateAddr(addr, updateAddr);
		return "updateAddrsuccess";
	}

	/**
	 * ɾ���ջ���ַ
	 */
	public String delAddr() {
		System.out.println("addrAction...delAddr()..");
		Addr address = addrBiz.queryAddr_id(addr.getA_id());
		addrBiz.deleteAddr(address);
		return "delAddrSuccess";
	}

	/**
	 * ��ҳ��ѯ�ջ���ַ
	 */
	public String findAllAddr() {
		return "findAllAddrSuccess";
	}

}
