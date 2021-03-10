package com.delay.teacherappointment.controller;

import com.delay.teacherappointment.entity.Content;
import com.delay.teacherappointment.entity.User;
import com.delay.teacherappointment.service.ContentService;
import com.delay.teacherappointment.service.UserService;
import com.delay.teacherappointment.utils.ExecuteResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author 闫金柱
 * @date 2021-3-6 20:45
 */
@Controller
@RequestMapping("content")
public class ContentController extends BaseController {

    @Autowired
    ContentService contentService;
    @Autowired
    UserService userService;

    /**
     * 用户文章列表
     * @return
     */
    @RequestMapping("findListByUserId")
    @ResponseBody
    public ExecuteResult findListByUserId() {
        User user = getUser();
        List<Content> list = contentService.findByUserId(user.getId());
        return ExecuteResult.ok(list);
    }

    /**
     * 根据分类获取文章列表
     * @param typeId
     * @return
     */
    @RequestMapping("getContent")
    @ResponseBody
    public ExecuteResult getContent(Integer typeId){
        List<Content> list = contentService.findByType(typeId);
        return ExecuteResult.ok(list);
    }

    /**
     * 获取全部(数量)
     * @param num
     * @return
     */
    @RequestMapping("findAll")
    @ResponseBody
    public ExecuteResult findAll(Integer num){
        List<Content> list;
        if(num==null){
            list = contentService.findAll();
        }else{
            list = contentService.findByLimit(num);
        }

        return ExecuteResult.ok(list);
    }


    /**
     * 发表文章
     * @param content
     * @return
     */
    @RequestMapping("publish")
    @ResponseBody
    public ExecuteResult publish(Content content) {
        User user = userService.findById(getUser().getId()).orElse(null);
        if(content.getStatus().equals(0)){
            if(!user.getIsTeacher().equals(1)){
                return ExecuteResult.fail("您没有通过教师认证");
            }
        }
        content.setCreateTime(new Date());
        content.setUser(getUser());
        contentService.saveAndFlush(content);
        return ExecuteResult.ok();

    }


}
