package org.bigjava.addr.biz.impl;

import java.util.List;

import org.bigjava.addr.biz.AddrBiz;
import org.bigjava.addr.dao.AddrDao;
import org.bigjava.addr.entity.Addr;
import org.bigjava.function.Paging;
import org.bigjava.user.entity.User;

public class AddrBizImpl implements AddrBiz {

	// ע��addrDao
	private AddrDao addrDao;

	public void setAddrDao(AddrDao addrDao) {
		this.addrDao = addrDao;
	}

	//����ջ���ַ
	@Override
	public void addAddr(Addr addr, User user) {
		addrDao.addAddr(addr, user);
	}

	//�޸��ջ���ַ
	@Override
	public void updateAddr(Addr addr, Addr updateAddr) {
		addrDao.updateAddr(addr, updateAddr);
	}

	//ɾ���ջ���ַ
	@Override
	public void deleteAddr(Addr addr) {
		addrDao.deleteAddr(addr);
	}

	//��ҳ��ѯ���е�ַ
	@Override
	public List<Addr> queryAllAddr(Paging page, User user) {
		return addrDao.queryAllAddr(page, user);
	}

	//��ѯ���е�ַ��������
	@Override
	public int queryAllAddrNumber(User user) {
		return addrDao.queryAllAddrNumber(user);
	}

	//����ID��ѯ�ջ���ַ
	@Override
	public Addr queryAddr_id(int id) {
		return addrDao.queryAddr_id(id);
	}

}
