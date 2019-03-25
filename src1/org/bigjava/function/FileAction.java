package org.bigjava.function;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.apache.commons.io.FileUtils;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class FileAction {
	
	private static BASE64Encoder encoder = new sun.misc.BASE64Encoder();
	private static BASE64Decoder decoder = new sun.misc.BASE64Decoder();
	
	private File myFile;// �ϴ���ͼƬ
	private String myFileContentType;// �ϴ���ͼƬ����
	private String myFileFileName;// �ϴ���ͼƬ����
	private String destPath;// �ϴ��ĵ�ַ
	
	public String image() {
		System.out.println("��ʼ�ϴ�");
		
		destPath = "E:/���/Tomcat/wtpwebapps/ImageIOTransition/image/";
		
		System.out.println("ͼƬ" + myFile);
		System.out.println("ͼƬ����" + myFileContentType);
		System.out.println("ͼƬ��" + myFileFileName);
		System.out.println("ͼƬ��ַ" + destPath);
		
		File file = new File(destPath, myFileFileName);
		try {
			FileUtils.copyFile(myFile, file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "file_error";
		}
		
		return "file_success";
	}

	public File getMyFile() {
		return myFile;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String getMyFileContentType() {
		return myFileContentType;
	}

	public void setMyFileContentType(String myFileContentType) {
		this.myFileContentType = myFileContentType;
	}

	public String getMyFileFileName() {
		return myFileFileName;
	}

	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

	public String getDestPath() {
		return destPath;
	}

	public void setDestPath(String destPath) {
		this.destPath = destPath;
	}

	/**
	 * ��ͼƬת��Ϊ������
	 */
	public String getImageBinary(String destPath, String myFileType) {// destPathΪͼƬ��·����myFileTypeΪͼƬ������
		System.out.println("��ʼ��ͼƬת��Ϊ������");
		File fileImage = new File("E:/���/Tomcat/wtpwebapps/ImageIOTransition/image/1.png");// ѡ��Ҫת���ɶ����Ƶ�ͼƬ·��
		BufferedImage bi;
		try {
			bi = ImageIO.read(fileImage);
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			ImageIO.write(bi, "png", baos);  //�˴���ͼƬ��ʽ������ͼƬ��ʽ��ͬ�������ʧ��
			byte[] bytes = baos.toByteArray();
 
			return encoder.encodeBuffer(bytes).trim();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * ��������ת��ΪͼƬ
	 * @param args
	 */
	public void base64StringToImage(String base64String, String destPath, String myFileType) {// base64StringΪͼƬ�Ķ������롢destPathΪ����ͼƬ��·�� �Լ����֡�myFileTypeΪת���ɵ�ͼƬ�ĸ�ʽ
		try {
			byte[] bytes1 = decoder.decodeBuffer(base64String);
 
			ByteArrayInputStream bais = new ByteArrayInputStream(bytes1);
			BufferedImage bi1 = ImageIO.read(bais);
			File w2 = new File("E:/���/Tomcat/wtpwebapps/ImageIOTransition/image/2.png");// ѡ������ͼƬ��·�����Լ�ͼƬ�࣬������jpg,png,gif��ʽ
			ImageIO.write(bi1, "png", w2);// �˴�������������ɵ�ͼƬ������ͬ�����ʧ��
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
