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
	
	private File myFile;// 上传的图片
	private String myFileContentType;// 上传的图片类型
	private String myFileFileName;// 上传的图片名字
	private String destPath;// 上传的地址
	
	public String image() {
		System.out.println("开始上传");
		
		destPath = "E:/软件/Tomcat/wtpwebapps/ImageIOTransition/image/";
		
		System.out.println("图片" + myFile);
		System.out.println("图片类型" + myFileContentType);
		System.out.println("图片名" + myFileFileName);
		System.out.println("图片地址" + destPath);
		
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
	 * 将图片转换为二进制
	 */
	public String getImageBinary(String destPath, String myFileType) {// destPath为图片的路径、myFileType为图片的类型
		System.out.println("开始将图片转换为二进制");
		File fileImage = new File("E:/软件/Tomcat/wtpwebapps/ImageIOTransition/image/1.png");// 选择要转换成二进制的图片路径
		BufferedImage bi;
		try {
			bi = ImageIO.read(fileImage);
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			ImageIO.write(bi, "png", baos);  //此处的图片格式必须与图片格式相同，否则会失真
			byte[] bytes = baos.toByteArray();
 
			return encoder.encodeBuffer(bytes).trim();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 将二进制转换为图片
	 * @param args
	 */
	public void base64StringToImage(String base64String, String destPath, String myFileType) {// base64String为图片的二进制码、destPath为生成图片的路径 以及名字、myFileType为转换成的图片的格式
		try {
			byte[] bytes1 = decoder.decodeBuffer(base64String);
 
			ByteArrayInputStream bais = new ByteArrayInputStream(bytes1);
			BufferedImage bi1 = ImageIO.read(bais);
			File w2 = new File("E:/软件/Tomcat/wtpwebapps/ImageIOTransition/image/2.png");// 选择生成图片的路径、以及图片类，可以是jpg,png,gif格式
			ImageIO.write(bi1, "png", w2);// 此处最好设置与生成的图片类型相同否则会失真
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
