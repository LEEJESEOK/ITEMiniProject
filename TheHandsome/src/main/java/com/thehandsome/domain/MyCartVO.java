package com.thehandsome.domain;

import lombok.Data;

/**
 * @author ����
 * ��ٱ��� ���� vo �ۼ�
 */
@Data
public class MyCartVO {
	private String mid; // cart���� ��� id
	private String pid; // cart���� ��ǰ id
	private String psize; // cart�� ��� ��ǰ size
	private String pcolor; // cart�� ��� ��ǰ ����
	private int pamount; // ��ǰ ����
}
