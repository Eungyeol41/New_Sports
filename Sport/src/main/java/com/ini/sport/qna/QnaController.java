package com.ini.sport.qna;

import com.ini.sport.common.service.CmmnService;
import com.ini.sport.qna.service.QnaVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
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
    @ResponseBody
    @RequestMapping(folderPath + "/list.do")
    public String list(@ModelAttribute("searchVO") QnaVO searchVO, Model model) throws SQLException, IOException, InvocationTargetException {
        System.out.println("list 시작");
        cmmnService.selectList(searchVO, PROGRAM_ID);

        return folderPath + "list";
    }

}
