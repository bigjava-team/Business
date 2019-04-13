package org.bigjava.function;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

public class FileImageAction {
	
	private File fileImage;// �ؼ���(��jspҳ���input��ǩfile���Ե�nameֵ��ͬ)
	private String fileImageFileName;// ͼƬ��(��ʽ��input��ǩfile���Ե�name����FileName)
	private String fileImageContentType;// ͼƬ����(��ʽ��input��ǩfile���Ե�name����ContentType)
	private String savePath;// ����·��
	
	private String urlImage = "http://localhost:8080/Img/";// ͼƬ���url��ַ
	
	public String getSavePath() {
		return savePath;
	}
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	public String getUrlImage() {
		return urlImage;
	}
	public void setUrlImage(String urlImage) {
		this.urlImage = urlImage;
	}
	public File getFileImage() {
		return fileImage;
	}
	public void setFileImage(File fileImage) {
		this.fileImage = fileImage;
	}
	public String getFileImageFileName() {
		return fileImageFileName;
	}
	public void setFileImageFileName(String fileImageFileName) {
		this.fileImageFileName = fileImageFileName;
	}
	public String getFileImageContentType() {
		return fileImageContentType;
	}
	public void setFileImageContentType(String fileImageContentType) {
		this.fileImageContentType = fileImageContentType;
	}
	public void fileImage() throws IOException {
		String uuid = UUID.randomUUID().toString();// �������һ��36�ֽڵ�16���Ƶ��ַ���,ǿת��String����
		System.out.println(fileImageFileName);
		String imageSuffix = fileImageFileName.substring(fileImageFileName.lastIndexOf("."));// ��ȡ�ϴ��ļ��ĺ�׺
		uuid += imageSuffix;// ��������������ϴ����ļ���׺�����һ��
		System.out.println("�����" + uuid);
		
		savePath = "E://Img//"+uuid;// �������ļ��к��ļ���
		File file = new File(savePath);// ָ��·�����û���򴴽������
		File fileParent = file.getParentFile();// ��ȡ��Ŀ¼
		// �ж��Ƿ����
		if (!fileParent.exists()) {
			fileParent.mkdirs();// ���ɸ�Ŀ¼�ļ�
		}
		
		FileOutputStream fos = new FileOutputStream(file);// ?
		fileImageFileName = uuid;// ����������ϴ���ͼƬ�����ָ�ֵ��fileName
		
		FileInputStream fis = new FileInputStream(fileImage);// �����Ѵ��ļ���File����
		byte[] b = new byte[1024];
		int length = 0;
		while ((length=fis.read(b)) != -1) {// ��ȡ�ϴ����ļ�
			fos.write(b, 0, length);// �ϴ�ͼƬ��Ŀ��λ��
		}
		
		fos.close();
		fis.close();
	}
	@Override
	public String toString() {
		return "FileImageAction [fileImage=" + fileImage + ", fileImageFileName=" + fileImageFileName
				+ ", fileImageContentType=" + fileImageContentType + ", savePath=" + savePath + ", urlImage=" + urlImage
				+ "]";
	}
}
