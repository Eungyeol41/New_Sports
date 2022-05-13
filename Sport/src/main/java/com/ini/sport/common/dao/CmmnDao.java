package com.ini.sport.common.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;

@Repository("cmmnDao")
public class CmmnDao {

    @Resource(name = "sqlMapClientCommon")
    private SqlSessionTemplate template;

    private static final String PACKAGE_NAME = "com.ini.";

    /* 목록 조회 */
    public List<?> selectList(final Object paramVO, final String queryId) throws IOException, InvocationTargetException, SQLException {
        String mQueryId = "";
        if (queryId != null && (queryId.equals("") || queryId.indexOf(".") < 0)) {
            mQueryId = queryId + ".selectList";
        } else {
            mQueryId = queryId;
        }
        return template.selectList(PACKAGE_NAME + mQueryId, paramVO);
    }

    /* 목록의 카운트 조회 */
    public int selectCount(final Object paramVO, final String queryId) throws IOException, InvocationTargetException, SQLException {
        String mQueryId = "";
        if (queryId != null && (queryId.equals("") || queryId.indexOf(".") < 0)) {
            mQueryId = queryId + ".selectCount";
        } else {
            mQueryId = queryId;
        }
        return (Integer) template.selectOne(PACKAGE_NAME + mQueryId, paramVO);
    }

    /* 목록의 상세 정보 조회 */
    public Object selectContents(final Object paramVO, final String queryId) throws IOException, InvocationTargetException, SQLException {
        String mQueryId = "";
        if (queryId != null && (queryId.equals("") || queryId.indexOf(".") < 0)) {
            mQueryId = queryId + ".selectContents";
        } else {
            mQueryId = queryId;
        }
        return template.selectOne(PACKAGE_NAME + mQueryId, paramVO);
    }

    /* 데이터 추가 */
    public void insertContents(final Object paramVO, final String queryId) throws IOException, InvocationTargetException, SQLException {
        String mQueryId = "";
        if (queryId != null && (queryId.equals("") || queryId.indexOf(".") < 0)) {
            mQueryId = queryId + ".insertContents";
        } else {
            mQueryId = queryId;
        }
        template.insert(PACKAGE_NAME + mQueryId, paramVO);
    }

    /* 데이터 수정 */
    public void updateContents(final Object paramVO, final String queryId) throws IOException, InvocationTargetException, SQLException {
        String mQueryId = "";
        if (queryId != null && (queryId.equals("") || queryId.indexOf(".") < 0)) {
            mQueryId = queryId + ".updateContents";
        } else {
            mQueryId = queryId;
        }
        template.update(PACKAGE_NAME + mQueryId, paramVO);
    }

    /* 데이터 삭제 */
    public void deleteContents(final Object paramVO, final String queryId) throws IOException, InvocationTargetException, SQLException {
        String mQueryId = "";
        if (queryId != null && (queryId.equals("") || queryId.indexOf(".") < 0)) {
            mQueryId = queryId + ".deleteContents";
        } else {
            mQueryId = queryId;
        }
        template.delete(PACKAGE_NAME + mQueryId, paramVO);
    }
}
