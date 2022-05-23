package com.ini.sport.controller;

import com.ini.sport.model.SearchVO;
import com.ini.sport.service.SearchService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class SearchController {

	protected SearchService searchService;

	/** folderPath **/
	private final static String folderPath = "/search/";

	@ResponseBody
	@RequestMapping("/")
	public String home() {
		return "main임";
	}

	@RequestMapping(folderPath + "list.do")
	public String main(Model model) throws Exception {
		List<SearchVO> facList = searchService.selectAll();

		return folderPath + "list";
	}
}
