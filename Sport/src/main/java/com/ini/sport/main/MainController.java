package com.ini.sport.main;

import com.ini.sport.common.CmmnService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller
public class HomeController {

    /* SQL Service를 공통으로 모아놓은 곳 */
    @Resource(name = "cmmnService")
    protected CmmnService cmmnService;

    /* SQL에서 사용할 ID */
    private final static String PROGRAM_ID = "Main";

    /* 폴더 주소(경로) */
    private final static String folderPath = "/sport/main";


}
