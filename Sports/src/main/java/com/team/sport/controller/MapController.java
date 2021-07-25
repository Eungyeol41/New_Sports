package com.team.sport.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.sport.model.DetailPageDTO;
import com.team.sport.service.MapService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/map")
public class MapController {
	
	protected final MapService mapService;

	@RequestMapping(value = {"/", ""}, method = RequestMethod.GET)
	public String map() {
		return "map/t_map";
	}
	
	@RequestMapping(value = {"/popup"}, method = RequestMethod.GET)
	public String map_pop() {
		return "map/popup";
	}
	
	@RequestMapping(value = {"/marker"}, method = RequestMethod.GET)
	public String map_marker(Model model) {
		
		List<DetailPageDTO> vList = mapService.selectAll();
		log.debug("Controller - VLIST : {}", vList.toString());
		
		model.addAttribute("VLIST", vList);
		
		return "map/marker";
	}
	
}
