package org.bigjava.function;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {
	// ����ȫ�ֱ������
	private static String encoding;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// �����ַ���������
		request.setCharacterEncoding(encoding);
		response.setCharacterEncoding(encoding);
		chain.doFilter(request, response);
	}

	// ��ʼ��
	public void init(FilterConfig config) throws ServletException {
		// ����web.xml�����ļ��еĳ�ʼ����
		encoding = config.getInitParameter("CharsetEncoding");
				
	}
}
