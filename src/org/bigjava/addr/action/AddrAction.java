package org.bigjava.addr.action;

import org.bigjava.addr.biz.AddrBiz;
import org.bigjava.addr.entity.Addr;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AddrAction extends ActionSupport implements ModelDriven<Addr> {

	// 注入Addr实体
	private Addr addr = new Addr();

	@Override
	public Addr getModel() {
		// TODO Auto-generated method stub
		return addr;
	}

	// 注入addrBiz
	private AddrBiz addrBiz;

	public void setAddrBiz(AddrBiz addrBiz) {
		this.addrBiz = addrBiz;
	}

	// 注入用户User实体
	private User user;

	public void setUser(User user) {
		this.user = user;
	}

	// 注入UserBiz
	private UserBiz userBiz;

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	/**
	 * 添加收货地址
	 */
	public String addAddress() {
		int id = user.getU_id();
		user = userBiz.query(id);
		
		addrBiz.addAddr(addr, user);
		return "addAddressSuccess";
	}

	/**
	 * 根据ID查询用户收货地址
	 */
	public String queryAddrById() {
		System.out.println("进入AddrAction...queryAddrById().");
		addr = addrBiz.queryAddr_id(addr.getA_id());
		return "queryAddrByIdSuccess";
	}

	/**
	 * 修改收货地址
	 */
	public String updateAddr() {
		Addr updateAddr = new Addr();
		
		addrBiz.updateAddr(addr, updateAddr);
		return "updateAddrsuccess";
	}

	/**
	 * 删除收货地址
	 */
	public String delAddr() {
		System.out.println("addrAction...delAddr()..");
		Addr address = addrBiz.queryAddr_id(addr.getA_id());
		addrBiz.deleteAddr(address);
		return "delAddrSuccess";
	}

	/**
	 * 分页查询收货地址
	 */
	public String findAllAddr() {
		return "findAllAddrSuccess";
	}

}
