package com.ini.sport.common.service.impl;

import com.ini.sport.common.dao.CmmnDao;
import com.ini.sport.common.service.CmmnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;

@Service("cmmnService")
public class CmmnServiceImpl implements CmmnService {

    @Autowired
    private CmmnDao cmmnDao;

    @Override
    public List<?> selectList(final Object paramVO, final String queryId) throws IOException, InvocationTargetException, SQLException {
        return cmmnDao.selectList(paramVO, queryId);
    }

    @Override
    public int selectCount(final Object paramVO, final String queryId) throws IOException, InvocationTargetException, SQLException {
        return cmmnDao.selectCount(paramVO, queryId);
    }

    @Override
    public Object selectContents(final Object paramVO, final String queryId) throws IOException, InvocationTargetException, SQLException {
        return cmmnDao.selectContents(paramVO, queryId);
    }

    @Override
    public void insertContents(final Object paramVO, final String queryId) throws IOException, InvocationTargetException, SQLException {
        cmmnDao.insertContents(paramVO, queryId);
    }

    @Override
    public void updateContents(final Object paramVO, final String queryId) throws IOException, InvocationTargetException, SQLException {
        cmmnDao.updateContents(paramVO, queryId);
    }

    @Override
    public void deleteContents(final Object paramVO, final String queryId) throws IOException, InvocationTargetException, SQLException {
        cmmnDao.deleteContents(paramVO, queryId);
    }
}
