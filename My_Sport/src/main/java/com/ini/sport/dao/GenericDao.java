package com.ini.sport.dao;

import java.util.List;
import java.util.Map;

public interface GenericDao<VO, PK> {

	public List<VO> selectAll();
	public VO selectContents(VO vo);
	public VO findById(PK pk);

	public int insert(VO vo);
	public int update(VO vo);
	public int delete(PK pk);
}