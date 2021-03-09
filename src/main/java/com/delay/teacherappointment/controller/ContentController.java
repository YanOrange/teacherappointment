package com.delay.teacherappointment.controller;

import com.delay.teacherappointment.entity.Content;
import com.delay.teacherappointment.entity.User;
import com.delay.teacherappointment.service.ContentService;
import com.delay.teacherappointment.utils.ExecuteResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

/**
 * @author 闫金柱
 * @date 2021-3-6 20:45
 */
@Controller
@RequestMapping("content")
public class ContentController extends BaseController {

//    @Autowired
//    ContentService contentService;

    @RequestMapping("findListByUserId")
    @ResponseBody
    public ExecuteResult findListByUserId() {
        User user = getUser();
//        List<Content> list = contentService.findByUserId(user.getId());
//        return ExecuteResult.ok(list);
        return null;
    }


    @RequestMapping("publish")
    @ResponseBody
    public ExecuteResult publish(Content content) {
        content.setCreateTime(new Date());
        content.setUser(getUser());
//        contentService.saveAndFlush(content);
        return ExecuteResult.ok();
    }


}
