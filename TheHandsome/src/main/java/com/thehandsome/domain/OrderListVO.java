package com.thehandsome.domain;

import java.sql.Date;

import lombok.Data;
/**
 * 
 * @author ����
 * �ֹ�����Ʈ ���� VO
 */
@Data
public class OrderListVO {
	private String oid; // �ֹ�����Ʈ�� �����ϴ� �ֹ���ȣ
	private String mid; // �ֹ�����Ʈ�� �����ϴ� �� id
	private int ozipcode; // �����ȣ
	private String oaddress1; // �ּ�
	private String oaddress2; // ���ּ�
	private String oreceiver; // ������
	private String otel; // ��ȭ��ȣ
	private String omessage; // ��û����
	private Date odate; // �ֹ�����
	private int ousedmileage; // ��� ���ϸ���
	private int opayment; // �ֹ��ݾ�
	private int odiscounted; //���αݾ�

}
