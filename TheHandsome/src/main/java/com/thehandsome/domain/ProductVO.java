package com.thehandsome.domain;

import lombok.Data;

/**
 * 
 * @author ��
 * ��ǰ���� VO
 */
@Data
public class ProductVO {
	private String pid; // ��ǰ id
	private int bno; // ��ǰ �귣�� number
	private String clarge; // ��з�
	private String cmedium; // �ߺз�
	private String csmall; // �Һз�
	private String pname; // ��ǰ��
	private int pprice; // ��ǰ����
	private String pdetail; // ��ǰ����
	private String pseason; // ��ǰ ����
}
