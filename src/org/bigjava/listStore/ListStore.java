package org.bigjava.listStore;

public class ListStore {
	
	private String content;// ���� ��֤��

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "ListStore [content=" + content + "]";
	}

}
