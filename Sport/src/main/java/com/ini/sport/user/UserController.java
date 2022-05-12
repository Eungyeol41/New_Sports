package com.ini.sport.qna;

import com.ini.sport.common.CmmnService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.text.ParseException;

@Controller
public class QnaController {

    /* SQL Service를 공통으로 모아놓은 곳 */
    @Resource(name = "cmmnService")
    protected CmmnService cmmnService;

    /* SQL에서 사용할 ID */
    private final static String PROGRAM_ID = "Qna";

    /* 폴더 주소(경로) */
    private final static String folderPath = "/sport/qna";

    /* QNA 게시판 보기 */
    @RequestMapping(folderPath + "/list.do")
    public String list(Model model) throws ParseException {
        return folderPath + "list";
    }

}
