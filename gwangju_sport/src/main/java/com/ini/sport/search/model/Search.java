package com.ini.sport.search.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Getter
@Setter
@ToString
@Document("t_fac_list")
public class Search {
    @Id
    private String _id;
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
    /* 시설전화번호 */
    private String facTel;
    /* 시설주소 */
    private String facAddr;
    /* 시설이용료 */
    private String facMoney;
    /* 시설에서이용가능한종목 */
    private String facSport;
}
