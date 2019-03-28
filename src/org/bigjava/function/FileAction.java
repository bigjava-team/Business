package org.bigjava.function;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;

public class FileAction {
	
	private File myFile;// 上传的图片
	private String myFileContentType;// 上传的图片类型
	private String myFileFileName;// 上传的图片名字
	private String destPath;// 上传的地址
	
	public void image(String username) {// 上传图片的用户的用户名
		System.out.println("开始上传");
		
		destPath = "C:/Users/Mr.Man/Desktop/Business/WebContent/productImage/";
		
		System.out.println("图片" + myFile);
		System.out.println("图片类型" + myFileContentType);
		System.out.println("图片名" + myFileFileName);
		System.out.println("图片地址" + destPath);
		
		this.myFileFileName = username +"_"+ myFileFileName;// 生成动态的图片名
		System.out.println("当前图片名" + myFileFileName);
		
		File file = new File(destPath, myFileFileName);
		try {
			FileUtils.copyFile(myFile, file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
