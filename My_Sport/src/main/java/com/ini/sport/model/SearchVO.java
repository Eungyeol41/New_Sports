package com.ini.sport.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SearchVO {
	/* 시퀀스번호 */
	private String seq;
	/* 최초등록일 */
	private String rgstDt;
	/* 최초등록자 */
	private String rgstId;
	/* 최종변경일 */
	private String rvseDt;
	/* 최종변경자 */
	private String rvseId;
	/* 시설코드 */
	private String facCd;
	/* 시설명 */
	private String facNm;
	/* 시설 전화번호 */
	private String facTel;
	/* 시설 주소 */
	private String facAddr;
	/* 시설 이용료 */
	private String facMoney;
	/* 시설에서 이용 가능한 종목 */
	private String facSport;
}
