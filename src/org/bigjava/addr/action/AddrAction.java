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

	// 注入Addr实体
	private Addr addr = new Addr();
	private User loginUser;
	// 注入用户User实体
	private User user;
	// 注入Paging实体
	private Paging paging;

	// 注入UserBiz
	private UserBiz userBiz;
	// 注入addrBiz
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
	 * 添加收货地址
	 */
	public String addAddress() {
		System.out.println("开始添加收货地址");
		System.out.println(loginUser);
		System.out.println(addr);

		user = userBiz.queryUsernameUser(loginUser.getUsername());

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
		findAllAddr();
		return "delAddrSuccess";
	}

	/**
	 * 分页查询收货地址
	 */
	public String findAllAddr() {
		System.out.println("开始分页查询");
		user = userBiz.queryUsernameUser(loginUser.getUsername());
		number = addrBiz.queryAllAddrNumber(user);
		paging = new Paging(paging.getPresentPage(), number, 5);
		listAddr = addrBiz.queryAllAddr(paging, user);

		return "findAllAddrSuccess";
	}

}
