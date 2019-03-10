package org.bigjava.addr.dao;

import java.util.List;

import org.bigjava.addr.entity.Addr;
import org.bigjava.function.Paging;
import org.bigjava.user.entity.User;

public interface AddrDao {
	
	/**
	 * 添加收货地址
	 */
	public void addAddr(Addr addr, User user);
	
	/**
	 * 修改收货地址
	 * addr为数据库中收货地址数据
	 * updateAddr为修改的收货地址数据
	 * 
	 */
	public void updateAddr(Addr addr, Addr updateAddr);
	
	/**
	 * 删除收货地址
	 */
	public void deleteAddr(Addr addr);
	
	/**
	 * 根据用户权限，分页查询收货地址
	 */
	public List<Addr> queryAllAddr(Paging page, User user);
	
	/**
	 *  根据用户权限，查询收货地址的条数
	 */
	public int queryAllAddrNumber(User user);
	
	/**
	 * 通过收货地址id查询收货地址
	 */
	public Addr queryAddr_id(int id);

}
