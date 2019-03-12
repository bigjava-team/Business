package org.bigjava.image.dao.impl;

import org.bigjava.image.dao.ImageDao;
import org.bigjava.image.entity.Images;
import org.bigjava.product.entity.Product;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class ImageDaoImpl extends HibernateDaoSupport implements ImageDao {

	// �����ƷͼƬ
	@Override
	public void addImages(Images images, Product product) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��addImages����");
		
		images.setProduct(product);// ���ͼƬ��������Ʒ����������
		
		this.getHibernateTemplate().save(images);// ��ͼƬ���ݴ洢�����ݿ�
	}

	// �޸���ƷͼƬ
	@Override
	public void updateImages(Images images, Images updateImages) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��updateImages����");
		
		if (updateImages.getImg_path() == null || updateImages.getImg_path().equals("")) {
			
		} else {
			images.setImg_path(updateImages.getImg_path());
		}
	}

	// ͨ��ͼƬid��ѯͼƬ·��
	@Override
	public Images queryImages_path(int img_id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryImages_path����");
		return this.getHibernateTemplate().get(Images.class, img_id);// ͨ��ͼƬid��ѯͼƬ����
	}

	// ɾ��ͼƬ·��
	@Override
	public void deleteImages(Images images) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ�� deleteImages����");
		this.getHibernateTemplate().delete(images);// ɾ�����ݿ��е�ͼƬ·��
	}

}
