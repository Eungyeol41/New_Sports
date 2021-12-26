package com.ini.gpc.controller;

import com.ini.gpc.service.CommunityService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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

        DateTimeFormatter dateFormat = DateTimeFormatter
                .ofPattern("yyyy년 MM월 dd일")
                .withLocale(Locale.forLanguageTag("ko"));

        DateTimeFormatter timeFormat = DateTimeFormatter
                .ofPattern("a HH시 mm분")
                .withLocale(Locale.forLanguageTag("ko"));

        String localDate = LocalDateTime.now().format(dateFormat);
        log.debug("현재 날짜: {}", localDate);
        String localTime = LocalDateTime.now().format(timeFormat);
        log.debug("현재 시간: {}", localTime);

        model.addAttribute("DATE", localDate);
        model.addAttribute("TIME", localTime);

        return "community/insert";
    }

    @ResponseBody
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert() {
        return "추가 완료!";
    }

}
