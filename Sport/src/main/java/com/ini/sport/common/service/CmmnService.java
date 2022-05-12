package com.ini.sport.common;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;

public interface CmmnService {
    /* 목록 조회 */
    List<?> selectList(Object paramVO, String queryId) throws IOException, InvocationTargetException, SQLException;

    /* 목록의 카운트 조회 */
    int selectCount(Object paramVO, String queryId) throws IOException, InvocationTargetException, SQLException;

    /* 목록의 상세 정보 조회 */
    Object selectContents(Object paramVO, String queryId) throws IOException, InvocationTargetException, SQLException;

    /* 데이터 추가 */
    void insertContents(Object paramVO, String queryId) throws IOException, InvocationTargetException, SQLException;

    /* 데이터 수정 */
    void updateContents(Object paramVO, String queryId) throws IOException, InvocationTargetException, SQLException;

    /* 데이터 삭제 */
    void deleteContents(Object paramVO, String queryId) throws IOException, InvocationTargetException, SQLException;
}
