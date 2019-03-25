package org.bigjava.function;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;

public class FileAction {
	
	private File myFile;// �ϴ���ͼƬ
	private String myFileContentType;// �ϴ���ͼƬ����
	private String myFileFileName;// �ϴ���ͼƬ����
	private String destPath;// �ϴ��ĵ�ַ
	
	public String image(String u_username) {// �ϴ�ͼƬ���û����û���
		System.out.println("��ʼ�ϴ�");
		
		destPath = "E:/���/Tomcat/wtpwebapps/ImageIOTransition/image/";
		
		System.out.println("ͼƬ" + myFile);
		System.out.println("ͼƬ����" + myFileContentType);
		System.out.println("ͼƬ��" + myFileFileName);
		System.out.println("ͼƬ��ַ" + destPath);
		
		this.myFileFileName = u_username +"_"+ myFileFileName;// ���ɶ�̬��ͼƬ��
		System.out.println("��ǰͼƬ��" + myFileFileName);
		
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

}
