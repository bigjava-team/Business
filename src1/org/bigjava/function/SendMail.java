package org.bigjava.function;

import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class SendMail {
	
	//	��������ַ������ֵ���֤��
	public static String randomNumber() {
		Random ran = new Random();// ����random��
		String ranN = "";//	��֤��
		int verificationCode = 6;// ��֤��ĳ���
		for (int i=0; i<verificationCode; i++) {
			if (ran.nextInt(2) == 1)
				ranN += ran.nextInt(10);// �������0-9�����ڵ�����
			else
				ranN += (char) (ran.nextInt(26) + 65);//	�������A-Z�����ڵ���ĸ
		}
		System.out.println("��֤��" + ranN);
		return ranN;
	}

	// ����qq�ʼ�
	public static boolean sendMail(String emailTo, String content, String subject) {
		
		// �ռ��˵����䡢�ʼ������ġ��ʼ�������

		String fromEmail = "1084032831@qq.com";// �ҵ�QQ����

		String eMailType = "smtp.qq.com";

		String eMailAuthPassword = "tuvrfwoxmstbgigi";// �ҵ�QQ����IMAP��Ȩ��

		String body = content; // ��������

		try {

			// ****************************�����Ự************************************

			Properties props = new Properties();

			props.put("mail.smtp.host", eMailType);// ������ʹ�÷��ʼ��ĵ������������

			props.put("mail.password", eMailAuthPassword);

			props.put("mail.transport.protocol", "smtp");

			props.setProperty("mail.debug", "true");

			props.put("mail.smtp.auth", "true"); // ��������ͨ����֤

			// �������������Ҫ�����û�м����ȥ��qq�������֤���ɹ���һֱ��503����

			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

			props.put("mail.smtp.port", "465");

			props.put("mail.smtp.socketFactory.port", "465");

			// ���Ĭ�ϵ�session����

			Session mailSession = Session.getInstance(props);

			mailSession.setDebug(true);

			// *****************************������Ϣ***************************************

			MimeMessage mimeMessage = new MimeMessage(mailSession);

			InternetAddress from = new InternetAddress(fromEmail);

			mimeMessage.setFrom(from);

			InternetAddress to = new InternetAddress(emailTo); // �����ռ��˵�ַ���涨������

			mimeMessage.setRecipient(Message.RecipientType.TO, to);

			mimeMessage.setSentDate(new Date()); // ���÷���ʱ��

			mimeMessage.setSubject(subject); // ��������

			mimeMessage.setText(body); // ���� ����

			// ����Ϣ������������

			BodyPart bodyPart = new MimeBodyPart(); // �½�һ������ż����ݵ�BodyPart����

			bodyPart.setContent(body, "text/html;charset=UTF-8"); // ����
																	// �����ʼ�����ΪHTML����,��Ϊ���ı���

			Multipart multipart = new MimeMultipart();

			multipart.addBodyPart(bodyPart);

			mimeMessage.setContent(multipart);

			mimeMessage.saveChanges();

			// ������Ϣ

			Transport transport = mailSession.getTransport("smtp");

			transport.connect(eMailType, fromEmail, eMailAuthPassword);

			// ���ʼ����ʻ��Ϳ�ͨPOP3/IMAP�ġ���Ȩ�롱

			transport.sendMessage(mimeMessage, mimeMessage.getAllRecipients());

			transport.close();

			// *******************************������Ϣ********************************

			mimeMessage.writeTo(System.out);// ������Ϣ ���ڿ���̨ ��ʾ��Ϣ������������Ϣ

			System.out.println("�ʼ��ѳɹ����͵� " + emailTo);

			return true;

		} catch (Exception e) {

			e.printStackTrace();

			System.out.println(e);

			return false;

		}

	}
	
}
