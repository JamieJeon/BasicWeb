package com.jamie.sample.Home;

import com.jamie.sample.Home.Model.ResponseOverlays;
import com.jamie.sample.Home.Model.SAMPLE;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.inject.Inject;
import java.util.List;

/**
 * Handles requests for the application home page.
 */
@RequestMapping("REST")
@RestController
public class HomeRestController {

    private static final Logger logger = LoggerFactory.getLogger(HomeRestController.class);

    @Inject
    SqlSession session;

    @RequestMapping(value = "/REST_8995", method = RequestMethod.GET)
    @ResponseBody
    public ResponseOverlays<List<SAMPLE>> REST_8995() {
        final List<SAMPLE> SLIST = session.selectList("com.jamie.sample.Test.SampleMapper.GET_USER");

        if (SLIST != null && SLIST.size() > 0) {
            return new ResponseOverlays<>(200, null, SLIST);
        }

        return new ResponseOverlays<>(404, "리스트 정보가 존재하지 않습니다.", null);
    }
}
