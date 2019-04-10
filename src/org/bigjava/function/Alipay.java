package org.bigjava.function;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class Alipay {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092800614648";	
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCUyhBXFbbuuXu8OpGGJDzMIj2BWAsl4mczE1FsREEhmQD9GHjb5vcJtc9mqO5VEo+bJSlO8mqk31ktjTsAwhVaKLSrSMQMo2/pHxjKrbZnhqswGPQg9dhfK41hpT2IxMKLFXdN07jLXZcetSOhCkwWRjxNFeBiTD2Y4IygN2WoEF0E91G36V3sD7e6SMwlrAsd+kf2+ZGg79XkOLAj1br1GDf6O4jfQP0U5KJwxzJxs9J5vOHxNhElzt4YmAMxyphWiwEtadUJIbUkAFHS8j7Wk/2+J1prdkOg6m0LWsILmdp6m82gZghpsuEY2JeWFPiHHq1Es0YFG72F7D7WR8Z9AgMBAAECggEAJTurex9j97lSzXeakwbeb/bhjUyK/Z/6Uz2yUnWCFvZC2RMWq3DQwQ1OKVJ80a0jYp+aBreDGF8L4epFqZrn3PfyvionZUJA7wVpHs75pk586DxWWykqTCaJ6rV/AIq8ZDGq+T7SL5HsDzMlB1ecUragwGmJDRAnGeqXRkCWn8eWnWW6ffc6GRQdXh0t0TW5kkkfpXA5k02LPAeNbyz8KryM+9DSaw4um0tx352VzJJlBe4utlkq9R2BQD63Hbr1oxgmixMQMnsO0WSdddjH8nFdve/F0YhtJ5IJ4+2XnZY76+NBz38sgSJur3B6RhKahsNXLLxr8UBXuIbYh5J5wQKBgQDQNTmG7skNYeC2A7sf2Br1mk9xQx4Xybx6/IWhhl26Dk8hq8XCPoPt5Y4FYIONHMcNeq0M5H1rtDnxpufZpRL3dqq3dC2Rm7fAOri5rkgzqK2MGJ3a8WfR/hHPLrN9h5AOR26Wkiu4QTZFdHmFYEkyoWnzy8pxvI/rSEU5e6UYuwKBgQC28UQJqqEQGRJvEkyM299W00wmpZ+MxFuWsnU4OCennjhbm6tAUs4kRCkzvlpKAyBxspYg56JlyF1g3ZVS0J5ZuXK+jyBdUMQZLmiUe7tPr+CyWCbJImtfp1q3fmDn7nfKqxKG7z4fM34b/MxQDCKtxkUdn5DHlQePauFyhavmJwKBgFgcDgoyBtco8oVUMt4Y/9+ru668roF2l9KcBpkCWaug3o/rNzcqaX5FRMK1wzX2Va44mf74urLXhCXlcfxCxTH//+K+wYH7Gdm5f+7j+B4UZc0Bpdu/iSXulO7OXpriwW2pgP0rQmEpB6SA0+RDiPZqJIJNXZCgMW9qGBFpZ8Z9AoGATw/XyqGuN8nOGKh84sdHLzvkBjO/z1MxDeCUHjbOlHchfh25lfPzWOMIN2+Fj8ToKZr3nMLegURlbq50kTTNqpMlzssGPq3gAc33rmwG2Hp3Djxgjr5MTyuBXhnFAZciuDjUqfINE+jqEGhhWBrWhelRB2tlY4u5l7amNhsk3jMCgYEAmxwwFqOqZGHlLQ4RxO6SD9W+XrTc1Lx1zSVfPOwZv6AEEFSR8BH+GXDd1CJcKT/wR5hMNuAbbj/J/hDZgY9snb7G2vavJDBvDpp+vmFXtCdHdQrmc9haQjkvvE1FbZx2jF/nHT+cHXAVBGWuFJqWtGO3Y6nFtrNoOsFhej+tZck=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArB+3bULo6Az1y7mmVVL/yFO6dAgqdgPMwEmdOP+mSakj+xHemOCX3oOOfySXG0Z6G4WVk9Ce4kZpU0iJicN7+dYa9IGEiTNzO4uU7lE1jjo3grruvIAv4JXxYeZ6tqqcmxvDI/PiE2H0N+JoenGpH+v4nhBDjiXudsilcU7GiAm4DzIdUZYe9O5x7ptMYAjL/0P3ese02D2V2uWVXW8Fyl1GEqGyuxYr8/LOVvOvn3e84yMoVbfOcNyXHRL8c/oU+lG2/Mmwn8akArmzO/5ECoHflQt767K34ga+miRTxePksivycsU1iNLb7WDJMNZ+ao3phuj3lFv2UmoTFqGrAQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
//	public static String notify_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";
    public static String notify_url = "http://localhost:8080/Business/payOrders/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
//	public static String return_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";
    public static String return_url = "http://localhost:8080/Business/index.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 日志存放路径
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
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


