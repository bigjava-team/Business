package org.bigjava.addr.dao;

import java.util.List;

import org.bigjava.addr.entity.Addr;
import org.bigjava.function.Paging;
import org.bigjava.user.entity.User;

public interface AddrDao {
	
	/**
	 * ����ջ���ַ
	 */
	public void addAddr(Addr addr, User user);
	
	/**
	 * �޸��ջ���ַ
	 * addrΪ���ݿ����ջ���ַ����
	 * updateAddrΪ�޸ĵ��ջ���ַ����
	 * 
	 */
	public void updateAddr(Addr addr, Addr updateAddr);
	
	/**
	 * ɾ���ջ���ַ
	 */
	public void deleteAddr(Addr addr);
	
	/**
	 * �����û�Ȩ�ޣ���ҳ��ѯ�ջ���ַ
	 */
	public List<Addr> queryAllAddr(Paging page, User user);
	
	/**
	 *  �����û�Ȩ�ޣ���ѯ�ջ���ַ������
	 */
	public int queryAllAddrNumber(User user);
	
	/**
	 * ͨ���ջ���ַid��ѯ�ջ���ַ
	 */
	public Addr queryAddr_id(int id);

}
