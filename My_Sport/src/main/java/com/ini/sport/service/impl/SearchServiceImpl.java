package com.ini.sport.service.impl;

import com.ini.sport.dao.SearchDao;
import com.ini.sport.model.SearchVO;
import com.ini.sport.service.SearchService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("searchService")
public class SearchServiceImpl implements SearchService {

	protected SearchDao searchDao;

	@Override
	public List<SearchVO> selectAll() throws Exception {
		List<SearchVO> resultList = searchDao.selectAll();

		return resultList;
	}

	@Override
	public List<SearchVO> selectContents(SearchVO searchVO) {
		return null;
	}

	@Override
	public int insert(SearchVO SearchVO) {
		return 0;
	}

	@Override
	public int update(SearchVO SearchVO) {
		return 0;
	}

	@Override
	public int delete(Long seq) {
		return 0;
	}
}
