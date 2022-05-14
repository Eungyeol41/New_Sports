package com.ini.sport.service;

import com.ini.sport.model.SearchVO;

import java.util.List;

public interface SearchService {
	public List<SearchVO> selectAll() throws Exception;

	public List<SearchVO> selectContents(SearchVO searchVO);

	public int insert(SearchVO SearchVO);
	public int update(SearchVO SearchVO);
	public int delete(Long seq);
}
