package org.bigjava.function;

public class IsEmpty {
	
	public boolean isEmpty(String str) {
		System.out.println("½øÈëIsEmpty.....");
		if (null == str || str.trim().equals("")) {
			return true;
		}
		return false;
	}

}
