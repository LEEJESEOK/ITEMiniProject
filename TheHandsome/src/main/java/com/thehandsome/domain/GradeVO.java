package com.thehandsome.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
/**
 * 
 * @author "Seungyeon"
 *
 */
@AllArgsConstructor
@NoArgsConstructor
public class GradeVO {

	String gname;
	int gmin;
	int gmax;
	int gsale;
}
