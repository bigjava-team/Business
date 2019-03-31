package org.bigjava.addr.biz.impl;

import java.util.List;

import org.bigjava.addr.biz.AddrBiz;
import org.bigjava.addr.dao.AddrDao;
import org.bigjava.addr.entity.Addr;
import org.bigjava.function.Paging;
import org.bigjava.user.entity.User;

public class AddrBizImpl implements AddrBiz {

	// 注入addrDao
	private AddrDao addrDao;

	public void setAddrDao(AddrDao addrDao) {
		this.addrDao = addrDao;
	}

	//添加收货地址
	@Override
	public void addAddr(Addr addr, User user) {
		addrDao.addAddr(addr, user);
	}

	//修改收货地址
	@Override
	public void updateAddr(Addr addr, Addr updateAddr) {
		addrDao.updateAddr(addr, updateAddr);
	}

	//删除收货地址
	@Override
	public void deleteAddr(Addr addr) {
		addrDao.deleteAddr(addr);
	}

	//分页查询所有地址
	@Override
	public List<Addr> queryAllAddr(Paging page, User user) {
		return addrDao.queryAllAddr(page, user);
	}

	//查询所有地址的总条数
	@Override
	public int queryAllAddrNumber(User user) {
		return addrDao.queryAllAddrNumber(user);
	}

	//根据ID查询收货地址
	@Override
	public Addr queryAddr_id(int id) {
		return addrDao.queryAddr_id(id);
	}

}
