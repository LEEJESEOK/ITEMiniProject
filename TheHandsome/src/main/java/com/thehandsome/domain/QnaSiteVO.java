package com.thehandsome.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 
 * @author "LEE JESEOK"
 *
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
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
