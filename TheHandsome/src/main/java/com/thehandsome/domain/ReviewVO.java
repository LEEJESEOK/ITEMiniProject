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
public class ReviewVO {
	long rno;
	String mid;
	String pid;
	String pcolor;
	String psize;
	Date rdate;
	int rrate;
	String rcontent;
	String rimage;
}
