package com.ini.sport.search;

import com.ini.sport.search.model.Search;
import com.ini.sport.search.service.SearchService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class SearchController {
    @Resource(name = "searchService")
    protected SearchService searchService;

    /** folderPath **/
    private final static String folderPath = "/search/";

    @RequestMapping(value = folderPath + "list.do", method = RequestMethod.GET)
    public String list(Model model) {
        List<Search> facList = searchService.findAll();

        model.addAttribute("facList", facList);

        return folderPath + "list";
    }

    @RequestMapping(value = folderPath + "sch.do", method = RequestMethod.POST)
    public String search() {
        return folderPath + "sch";
    }
}
