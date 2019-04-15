package org.bigjava.addr.action;

import java.util.List;

import org.bigjava.addr.biz.AddrBiz;
import org.bigjava.addr.entity.Addr;
import org.bigjava.function.FileImageAction;
import org.bigjava.function.Paging;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AddrAction extends ActionSupport implements ModelDriven<Addr> {

	// ע��Addrʵ��
	private Addr addr = new Addr();
	private User loginUser;
	// ע���û�Userʵ��
	private User user;
	// ע��Pagingʵ��
	private Paging paging;

	// ע��UserBiz
	private UserBiz userBiz;
	// ע��addrBiz
	private AddrBiz addrBiz;

	private List<Addr> listAddr;
	private int number;

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public List<Addr> getListAddr() {
		return listAddr;
	}

	public void setListAddr(List<Addr> listAddr) {
		this.listAddr = listAddr;
	}

	public User getLoginUser() {
		return loginUser;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	@Override
	public Addr getModel() {
		// TODO Auto-generated method stub
		return addr;
	}

	public void setAddrBiz(AddrBiz addrBiz) {
		this.addrBiz = addrBiz;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	/**
	 * ����ջ���ַ
	 */
	public String addAddress() {
		System.out.println("��ʼ����ջ���ַ");
		System.out.println(loginUser);
		System.out.println(addr);

		user = userBiz.queryUsernameUser(loginUser.getUsername());

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
		findAllAddr();
		return "delAddrSuccess";
	}

	/**
	 * ��ҳ��ѯ�ջ���ַ
	 */
	public String findAllAddr() {
		System.out.println("��ʼ��ҳ��ѯ");
		user = userBiz.queryUsernameUser(loginUser.getUsername());
		number = addrBiz.queryAllAddrNumber(user);
		paging = new Paging(paging.getPresentPage(), number, 5);
		listAddr = addrBiz.queryAllAddr(paging, user);

		return "findAllAddrSuccess";
	}

}
