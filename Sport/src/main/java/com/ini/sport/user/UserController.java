package com.ini.sport.user;

import com.ini.sport.common.service.CmmnService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.text.ParseException;

@Controller
public class UserController {

    /* SQL Service를 공통으로 모아놓은 곳 */
    @Resource(name = "cmmnService")
    protected CmmnService cmmnService;

    /* SQL에서 사용할 ID */
    private final static String PROGRAM_ID = "User";

    /* 폴더 주소(경로) */
    private final static String folderPath = "/sport/user";

    /* 회원 가입 */
    @RequestMapping(folderPath + "/join.do")
    public String join(Model model) throws ParseException {
        return folderPath + "join";
    }

}
