package org.bigjava.function;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *������AlipayConfig
 *���ܣ�����������
 *��ϸ�������ʻ��й���Ϣ������·��
 *�޸����ڣ�2017-04-05
 *˵����
 *���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
 *�ô������ѧϰ���о�֧�����ӿ�ʹ�ã�ֻ���ṩһ���ο���
 */

public class Alipay {
	
//�����������������������������������Ļ�����Ϣ������������������������������

	// Ӧ��ID,����APPID���տ��˺ż�������APPID��Ӧ֧�����˺�
	public static String app_id = "2016092800614648";	
	
	// �̻�˽Կ������PKCS8��ʽRSA2˽Կ
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCUyhBXFbbuuXu8OpGGJDzMIj2BWAsl4mczE1FsREEhmQD9GHjb5vcJtc9mqO5VEo+bJSlO8mqk31ktjTsAwhVaKLSrSMQMo2/pHxjKrbZnhqswGPQg9dhfK41hpT2IxMKLFXdN07jLXZcetSOhCkwWRjxNFeBiTD2Y4IygN2WoEF0E91G36V3sD7e6SMwlrAsd+kf2+ZGg79XkOLAj1br1GDf6O4jfQP0U5KJwxzJxs9J5vOHxNhElzt4YmAMxyphWiwEtadUJIbUkAFHS8j7Wk/2+J1prdkOg6m0LWsILmdp6m82gZghpsuEY2JeWFPiHHq1Es0YFG72F7D7WR8Z9AgMBAAECggEAJTurex9j97lSzXeakwbeb/bhjUyK/Z/6Uz2yUnWCFvZC2RMWq3DQwQ1OKVJ80a0jYp+aBreDGF8L4epFqZrn3PfyvionZUJA7wVpHs75pk586DxWWykqTCaJ6rV/AIq8ZDGq+T7SL5HsDzMlB1ecUragwGmJDRAnGeqXRkCWn8eWnWW6ffc6GRQdXh0t0TW5kkkfpXA5k02LPAeNbyz8KryM+9DSaw4um0tx352VzJJlBe4utlkq9R2BQD63Hbr1oxgmixMQMnsO0WSdddjH8nFdve/F0YhtJ5IJ4+2XnZY76+NBz38sgSJur3B6RhKahsNXLLxr8UBXuIbYh5J5wQKBgQDQNTmG7skNYeC2A7sf2Br1mk9xQx4Xybx6/IWhhl26Dk8hq8XCPoPt5Y4FYIONHMcNeq0M5H1rtDnxpufZpRL3dqq3dC2Rm7fAOri5rkgzqK2MGJ3a8WfR/hHPLrN9h5AOR26Wkiu4QTZFdHmFYEkyoWnzy8pxvI/rSEU5e6UYuwKBgQC28UQJqqEQGRJvEkyM299W00wmpZ+MxFuWsnU4OCennjhbm6tAUs4kRCkzvlpKAyBxspYg56JlyF1g3ZVS0J5ZuXK+jyBdUMQZLmiUe7tPr+CyWCbJImtfp1q3fmDn7nfKqxKG7z4fM34b/MxQDCKtxkUdn5DHlQePauFyhavmJwKBgFgcDgoyBtco8oVUMt4Y/9+ru668roF2l9KcBpkCWaug3o/rNzcqaX5FRMK1wzX2Va44mf74urLXhCXlcfxCxTH//+K+wYH7Gdm5f+7j+B4UZc0Bpdu/iSXulO7OXpriwW2pgP0rQmEpB6SA0+RDiPZqJIJNXZCgMW9qGBFpZ8Z9AoGATw/XyqGuN8nOGKh84sdHLzvkBjO/z1MxDeCUHjbOlHchfh25lfPzWOMIN2+Fj8ToKZr3nMLegURlbq50kTTNqpMlzssGPq3gAc33rmwG2Hp3Djxgjr5MTyuBXhnFAZciuDjUqfINE+jqEGhhWBrWhelRB2tlY4u5l7amNhsk3jMCgYEAmxwwFqOqZGHlLQ4RxO6SD9W+XrTc1Lx1zSVfPOwZv6AEEFSR8BH+GXDd1CJcKT/wR5hMNuAbbj/J/hDZgY9snb7G2vavJDBvDpp+vmFXtCdHdQrmc9haQjkvvE1FbZx2jF/nHT+cHXAVBGWuFJqWtGO3Y6nFtrNoOsFhej+tZck=";
	
	// ֧������Կ,�鿴��ַ��https://openhome.alipay.com/platform/keyManage.htm ��ӦAPPID�µ�֧������Կ��
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArB+3bULo6Az1y7mmVVL/yFO6dAgqdgPMwEmdOP+mSakj+xHemOCX3oOOfySXG0Z6G4WVk9Ce4kZpU0iJicN7+dYa9IGEiTNzO4uU7lE1jjo3grruvIAv4JXxYeZ6tqqcmxvDI/PiE2H0N+JoenGpH+v4nhBDjiXudsilcU7GiAm4DzIdUZYe9O5x7ptMYAjL/0P3ese02D2V2uWVXW8Fyl1GEqGyuxYr8/LOVvOvn3e84yMoVbfOcNyXHRL8c/oU+lG2/Mmwn8akArmzO/5ECoHflQt767K34ga+miRTxePksivycsU1iNLb7WDJMNZ+ao3phuj3lFv2UmoTFqGrAQIDAQAB";

	// �������첽֪ͨҳ��·��  ��http://��ʽ������·�������ܼ�?id=123�����Զ����������������������������
//	public static String notify_url = "http://���̹������ʵ�ַ/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";
    public static String notify_url = "http://localhost:8080/Business/payOrders/notify_url.jsp";

	// ҳ����תͬ��֪ͨҳ��·�� ��http://��ʽ������·�������ܼ�?id=123�����Զ����������������������������
//	public static String return_url = "http://���̹������ʵ�ַ/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";
    public static String return_url = "http://localhost:8080/Business/index.jsp";

	// ǩ����ʽ
	public static String sign_type = "RSA2";
	
	// �ַ������ʽ
	public static String charset = "utf-8";
	
	// ֧��������
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// ��־���·��
	public static String log_path = "C:\\";


//�����������������������������������Ļ�����Ϣ������������������������������

    /** 
     * д��־��������ԣ�����վ����Ҳ���ԸĳɰѼ�¼�������ݿ⣩
     * @param sWord Ҫд����־����ı�����
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}


