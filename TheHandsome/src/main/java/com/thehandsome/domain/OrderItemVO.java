package com.thehandsome.domain;

import lombok.Data;

/**
 * 
 * @author ����
 * �ֹ� ���� VO �ۼ�
 */
@Data
public class OrderItemVO {
	private String oid; //�ֹ���ȣ
	private String pid; //�ֹ��� ��ǰ id
	private String ccolorname; //�ֹ��� ��ǰ ����
	private String ssize; //�ֹ��� ��ǰ ������
	private int oamount; //�ֹ��� ��ǰ ����
}
