package com.ini.sport.qna.service;

import org.apache.ibatis.type.Alias;

import java.io.Serializable;

@Alias("qnaVO")
public class QnaVO implements Serializable {

    private static final long serialVersionUID = 2172623835339565860L;

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
    /* 사용자ID */
    private String qId;
    /* 게시글제목 */
    private String qTitleNm;
    /* 게시글내용 */
    private String qCtt;
    /* 사용여부 */
    private String useYn;
    /* 공지여부 */
    private String qNtcYn;
    /* 조회수 */
    private String qClkCnt;

    public String getSeq() {
        return seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }

    public String getRgstDt() {
        return rgstDt;
    }

    public void setRgstDt(String rgstDt) {
        this.rgstDt = rgstDt;
    }

    public String getRgstId() {
        return rgstId;
    }

    public void setRgstId(String rgstId) {
        this.rgstId = rgstId;
    }

    public String getRvseDt() {
        return rvseDt;
    }

    public void setRvseDt(String rvseDt) {
        this.rvseDt = rvseDt;
    }

    public String getRvseId() {
        return rvseId;
    }

    public void setRvseId(String rvseId) {
        this.rvseId = rvseId;
    }

    public String getqId() {
        return qId;
    }

    public void setqId(String qId) {
        this.qId = qId;
    }

    public String getqTitleNm() {
        return qTitleNm;
    }

    public void setqTitleNm(String qTitleNm) {
        this.qTitleNm = qTitleNm;
    }

    public String getqCtt() {
        return qCtt;
    }

    public void setqCtt(String qCtt) {
        this.qCtt = qCtt;
    }

    public String getUseYn() {
        return useYn;
    }

    public void setUseYn(String useYn) {
        this.useYn = useYn;
    }

    public String getqNtcYn() {
        return qNtcYn;
    }

    public void setqNtcYn(String qNtcYn) {
        this.qNtcYn = qNtcYn;
    }

    public String getqClkCnt() {
        return qClkCnt;
    }

    public void setqClkCnt(String qClkCnt) {
        this.qClkCnt = qClkCnt;
    }
}