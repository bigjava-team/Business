package org.bigjava.user.dao;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

/**
 * 用户操作
 * @author Administrator
 *
 */
public interface UserDao {
	
	/**
	 * 注册用户
	 * user为注册用户信息
	 * 
	 */
	public void registerUser(User user); 
	
	/**
	 * 登录用户
	 * user为登录的用户名和密码
	 * 
	 */
	public List<User> loginUser(User user);
	
	/**
	 * 修改
	 * user为数据库中的用户数据
	 * users为修改的用户数据
	 * 
	 */
	public void updateUser(User user, User users);
	
	/**
	 * 通过id查询用户
	 * id为查询的用户id
	 * 
	 */
	public User query(int id);
	
	/**
	 * 通过id删除用户
	 * id为删除用户的id
	 * 
	 */
	public void deleteUser(User user);
	
	/**
	 * 管理员通过模糊分页查询用户
	 * username为模糊搜索的内容
	 * Paging为分页的类
	 * root为用户的权限
	 * 
	 */
	public List<User> limitDemend(String username, Paging page, int root);
	
	/**
	 * 管理员通过模糊查询总页数
	 * username为模糊搜索的内容
	 * root为用户的权限
	 * 
	 */
	public int queryPages(String username, int root);
	
	/**
	 * 校验用户名是否已存在
	 * username为校验的用户名
	 * 
	 */
	public boolean checkUsername(String username);
	
	/**
	 * 修改用户密码
	 * password为修改后的密码
	 * user为数据库的用户信息
	 * 
	 */
	public void updateUserPassword(String password, User user);
	
	/**
	 * 收藏店铺
	 * user为收藏店铺的用户信息
	 * merchant为收藏的店铺信息
	 * 
	 */
	public void collectMerchant(User user, Merchant merchant);
	
	/**
	 * 删除收藏的店铺
	 * user为删除店铺的用户信息
	 * merchant为删除的店铺信息
	 * 
	 */
	public void deleteCollectMerchant(User user, Merchant merchant);
}
