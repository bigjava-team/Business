package org.bigjava.function;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class FileImageAction {
	
	private List<File> fileImage;// 控件名(与jsp页面的input标签file属性的name值相同)
	private String fileImageFileName;// 图片名(格式：input标签file属性的name加上FileName)
	private String fileImageContentType;// 图片类型(格式：input标签file属性的name加上ContentType)
	private String savePath;// 保存路径
	
	private String urlImage = "http://localhost:8080/Img/";// 图片存放url地址
	
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
	public List<File> getFileImage() {
		return fileImage;
	}
	public void setFileImage(List<File> fileImage) {
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
	public List<String> fileImage() throws IOException {
		List<String> listFileImageFileName = new ArrayList<String>();// 上传多张图片时用于存储图片名
		String[] listImageSuffix = fileImageFileName.split(",");
		for (int i=0; i<fileImage.size(); i++) {
			String uuid = UUID.randomUUID().toString();// 随机生成一个36字节的16进制的字符串,强转成String类型
			System.out.println(fileImageFileName);
			String imageSuffix = listImageSuffix[i].substring(listImageSuffix[i].lastIndexOf("."));// 获取上传文件的后缀
			uuid += imageSuffix;// 将随机生成码与上传的文件后缀组合在一起
			System.out.println("随机数" + uuid);
			
			savePath = "E://Img//"+uuid;// 创建的文件夹和文件名
			File file = new File(savePath);// 指定路径如果没有则创建并添加
			File fileParent = file.getParentFile();// 获取父目录
			// 判断是否存在
			if (!fileParent.exists()) {
				fileParent.mkdirs();// 生成父目录文件
			}
			
			FileOutputStream fos = new FileOutputStream(file);// ?
			fileImageFileName = uuid;// 将更换后的上传的图片的名字赋值给fileName
			listFileImageFileName.add(fileImageFileName);
			
			FileInputStream fis = new FileInputStream(fileImage.get(i));// 传入已打开文件的File对象
			byte[] b = new byte[1024];
			int length = 0;
			while ((length=fis.read(b)) != -1) {// 读取上传的文件
				fos.write(b, 0, length);// 上传图片到目标位置
			}
			fos.close();
			fis.close();
		}
		return listFileImageFileName;
	}
	@Override
	public String toString() {
		return "FileImageAction [fileImage=" + fileImage + ", fileImageFileName=" + fileImageFileName
				+ ", fileImageContentType=" + fileImageContentType + ", savePath=" + savePath + ", urlImage=" + urlImage
				+ "]";
	}
}
