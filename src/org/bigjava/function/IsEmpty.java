package org.bigjava.function;

public class IsEmpty {
	
	public boolean isEmpty(String str) {
		System.out.println("����IsEmpty.....");
		if (str == null || str.trim().equals("")) {
			return true;
		}
		return false;
	}

}
