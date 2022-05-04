package com.thehandsome.domain;

import java.util.Date;

import lombok.Data;

/**
 * 
 * @author "LEE JESEOK"
 *
 */
@Data
public class QnaProductVO {

	long qid;
	String pid;
	String mid;
	String qtitle;
	String qcontent;
	Date qdate;
	String qmanager;
	String qreplytitle;
	String qreplycontent;
	Date qreplydate;
}
