package org.bigjava.user.dao;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.user.entity.User;

/**
 * 用户操作
 * @author Administrator
 *
 */
public interface UserDao {
	
	/**
	 * 注册用户
	 */
	public void registerUser(User user); 
	
	/**
	 * 登录用户
	 */
	public List<User> loginUser(User user);
	
	/**
	 * 修改
	 */
	public void updateUser(User user, User users);
	
	/**
	 * 修改密码
	 */
	public void updatePassword(User user);
	
	/**
	 * 通过id查询用户
	 */
	public User query(int id);
	
	/**
	 * 通过id删除用户
	 */
	public void deleteUser(User user);
	
	/**
	 * 管理员通过模糊分页查询用户
	 */
	public List<User> limitDemend(String username, Paging page);
	
	/**
	 * 管理员通过模糊查询总页数
	 */
	public int queryPages(String username);
	
	/**
	 * 校验用户名是否已存在
	 */
	public boolean checkUsername(String username);
	
	/**
	 * 修改用户密码
	 */
	public void updateUserPassword(String password, User user);
	
}
