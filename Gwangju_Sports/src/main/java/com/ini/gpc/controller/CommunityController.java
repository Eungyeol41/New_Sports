package com.ini.gpc.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.DayOfWeek;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalAdjusters;
import java.util.Locale;

@Slf4j
@Controller
@RequestMapping(value = "/community")
public class CommunityController {

    @RequestMapping(value = {"/", ""}, method = RequestMethod.GET)
    public String community() {

        return "community/community_main";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String insert(Model model) {

        LocalDateTime localDate = LocalDateTime.now();
        log.debug("현재 날짜 및 시간: {}", localDate);

        model.addAttribute("TIME", localDate);

        return "community/insert";
    }

    @ResponseBody
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert() {
        return "추가 완료!";
    }

}
