package com.team.sport.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/map")
public class MapController {

	@RequestMapping(value = {"/", ""}, method = RequestMethod.GET)
	public String map() {
		return "map/t_map";
	}
	
	@RequestMapping(value = {"/popup"}, method = RequestMethod.GET)
	public String map_pop() {
		return "map/popup";
	}
	
}
