package com.thehandsome.domain;

import java.sql.Date;

import lombok.Data;

/**
 * 
 * @author "LEE JESEOK"
 *
 */
@Data
public class QnaSiteVO {
	long qid;
	String mid;
	String qtitle;
	String qcontent;
	Date qdate;
	String qmanager;
	String qreplytitle;
	String qreplycontent;
	Date qreplydate;
}
