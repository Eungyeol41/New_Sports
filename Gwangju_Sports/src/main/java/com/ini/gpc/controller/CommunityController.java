package com.ini.gpc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/community")
public class CommunityController {

    @RequestMapping(value = {"/", ""}, method = RequestMethod.GET)
    public String community() {
        return "community/community_main";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String insert() {
        return "community/insert";
    }

    @ResponseBody
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(Model model) {
        return "추가 완료!";
    }

}
