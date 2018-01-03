package com.page.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.commons.dbcp.BasicDataSource;

public class SimplateDataSource {
	// �������ģʽ(��������:�̰߳�ȫ)
	// ��������
	private static final SimplateDataSource ds = new SimplateDataSource();
	// ��֤���ӳ�ֻ��һ��
	private static final String FILEPATH = "db_config.properties";
	private static Properties prop = new Properties();
	private static BasicDataSource bs = null;

	static {
		//��srcΪ��Ŀ¼�����ļ���ת��Ϊ������
		InputStream inStream = Thread.currentThread()
				.getContextClassLoader().getResourceAsStream(FILEPATH);

		try {
			prop.load(inStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		bs = new BasicDataSource();
		// ����������·��
		bs.setDriverClassName(prop.getProperty("oracleDriver"));
		// ����url
		bs.setUrl(prop.getProperty("url"));
		// �����û���
		bs.setUsername(prop.getProperty("user"));
		// ��������
		bs.setPassword(prop.getProperty("password"));
		// ���ù������ӵĲ���
		// �������ӳ��ڵĳ�ʼ������Ŀ
		bs.setInitialSize(Integer.parseInt(prop.getProperty("InitialSize")));
		// �������ӳ��ڻ�����������
		bs.setMaxActive(Integer.parseInt(prop.getProperty("MaxActive")));
		// �������ӳ��������е���������
		bs.setMaxIdle(Integer.parseInt(prop.getProperty("MaxIdle")));
		// �������ӵ����ȴ�ʱ��(��λ����)
		bs.setMaxWait(Integer.parseInt(prop.getProperty("MaxWait")));

	}

	// ����/��������
	// private static SimplateDataSource ds = null;
	// 1/���췽��˽�л�(��ֹ�����µ�ʵ��)
	private SimplateDataSource() {
	}

	// 2.�ṩһ������ʵ���ķ���,���Ǳ��뱣֤�����ص�ʵ��ֻ��һ������ʵ��
	public static SimplateDataSource getInstance() {
		// if(ds == null){
		// ds = new SimplateDataSource();
		// }
		return ds;
	}

	//���ܾ�̬
	public Connection getConnection() throws SQLException {
		return bs == null ? null:bs.getConnection();
	}
	
	/*public void destory(){
		ds.destory();
	}*/
}
