package com.ini.sport.search;

import com.ini.sport.common.service.CmmnService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

@Controller
public class SearchController {

    /* SQL Service를 공통으로 모아놓은 곳 */
    @Resource(name = "cmmnService")
    protected CmmnService cmmnService;

    /* SQL에서 사용할 ID */
    private final static String PROGRAM_ID = "Search";

    /* 폴더 주소(경로) */
    private final static String folderPath = "/sport/search";

    /* 체육관 시설 전체 보기 */
    @RequestMapping(folderPath + "/list.do")
    public String list(Model model) throws SQLException, IOException, InvocationTargetException {
        cmmnService.selectList("searchVO", PROGRAM_ID);

        return folderPath + "list";
    }

}
