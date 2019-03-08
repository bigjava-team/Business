package org.bigjava.user.biz;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.user.entity.User;

/**
 * 用户操作
 * @author Mr.Man
 *
 */
public interface UserBiz {
	
	/**
	 * 用户注册
	 */
	public void registerUser(User user);
	
	/**
	 * 修改用户信息
	 */
	public void updateUser(User user,User users);
	
	/**
	 * 通过ID查询用户
	 */
	public User query(int id);
	
	/**
	 * 通过ID删除用户
	 */
	public void deleteUser(User user);
	
	/**
	 * 管理员通过模糊分页查询用户
	 */
	public List<User> limitDemend(String username, Paging page);
	
	/**
	 * 管理员通过模糊查询总页数
	 */
	public  int queryPages(String username);
	
	/**
	 * 检验用户名
	 */
	public boolean checkUsername(String username);
	
}
