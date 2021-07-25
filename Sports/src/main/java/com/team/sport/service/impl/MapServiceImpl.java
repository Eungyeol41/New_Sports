package com.team.sport.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.team.sport.dao.MapDao;
import com.team.sport.model.DetailPageDTO;
import com.team.sport.service.MapService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service("mapServiceV1")
public class MapServiceImpl implements MapService {

	protected final MapDao mapDao;

	@Override
	public List<DetailPageDTO> selectAll() {
		// TODO view_상세페이지 전체 선택
		return mapDao.selectAll();
	}


}
