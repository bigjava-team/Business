package org.bigjava.test;

import org.bigjava.statement.TestStatement;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserTest {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext app = new ClassPathXmlApplicationContext("app.xml");
//		UserDao userDao = (UserDao) app.getBean("userDaoImpl");
		
//		TestStatement.queryAllOrderItem();
	}

}
