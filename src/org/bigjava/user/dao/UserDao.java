package org.bigjava.user.dao;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

/**
 * 用户操作
 * 
 * @author Administrator
 *
 */
public interface UserDao {

	/**
	 * 注册用户 user为注册用户信息
	 * user为注册的用户信息
	 * 
	 */
	public void registerUser(User user);

	/**
	 * 登录用户 user为登录的用户名和密码
	 * user为登录时的用户名和密码
	 * 
	 */
	public List<User> loginUser(User user);

	/**
	 * 修改 user为数据库中的用户数据 users为修改的用户数据
	 * user为数据库中用户内容、users为需要修改的用户内容
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
	 * 通过id删除用户 id为删除用户的id
	 * user为需要删除的用户的信息
	 * 
	 */
	public void deleteUser(User user);

	/**
	 * 管理员通过模糊分页查询用户 
	 * username为模糊搜索的内容 Paging为分页的类 root为用户的权限
	 * 
	 */
	public List<User> limitDemend(String username, Paging page, int root);

	/**
	 * 管理员通过模糊查询总页数 
	 * username为模糊搜索的内容 root为用户的权限
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
	 * password为修改后的密码 user为数据库的用户信息
	 * 
	 */
	public void updateUserPassword(String password, User user);

	/**
	 * 冻结用户，修改用户的u_is_freeze，
	 * 为1时用户冻结，用户不能登录，为2时用户没冻结，可以登录
	 */
	public void updateFreeze(int freeze, User user);
	
	/**
	 * 通过用户名获取用户信息
	 */
	public User queryUsernameUser(String username);
	
	/**
	 * 通过用户名模糊查询用户信息
	 */
	public List<User> likeQueryListUser(String searchText);
}
