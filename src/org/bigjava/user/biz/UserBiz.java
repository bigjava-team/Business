package org.bigjava.user.biz;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.user.entity.User;

/**
 * 用户操作
 * 
 * @author Mr.Man
 *
 */
public interface UserBiz {

	/**
	 * 用户注册
	 */
	public void registerUser(User user);

	/**
	 * 登录用户
	 */
	public List<User> loginUser(User user);

	/**
	 * 修改用户信息
	 */
	public void updateUser(User user, User users);

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
	public List<User> limitDemend(String username, Paging page, int u_root);

	/**
	 * 管理员通过模糊查询总页数
	 */
	public int queryPages(String username, int u_root);

	/**
	 * 校验用户名是否存在
	 */
	public boolean checkUsername(String username);

	/**
	 * 修改密码
	 */
	public void updateUserPassword(String password, User user);
	
	/**
	 * 修改用户状态（冻结与解冻用户）
	 */
	public void updateUserFreeze(int freeze, User user);
	
	/**
	 * 通过用户名获取用户信息
	 */
	public User queryUsernameUser(String username);
	
	/**
	 * 通过用户名模糊查询用户信息
	 */
	public List<User> likeQueryListUser(String searchText);
}
