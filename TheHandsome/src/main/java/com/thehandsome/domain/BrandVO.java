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
public class BrandVO {

	Long bno; // 브랜드 번호
	String bname; // 브랜드 명
}
