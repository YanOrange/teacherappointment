package com.delay.teacherappointment.controller;

import com.delay.teacherappointment.entity.Content;
import com.delay.teacherappointment.entity.User;
import com.delay.teacherappointment.entity.Warn;
import com.delay.teacherappointment.service.UserService;
import com.delay.teacherappointment.service.WarnService;
import com.delay.teacherappointment.utils.ExecuteResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

/**
 * @author 闫金柱
 * @date 2021-3-9 22:09
 */
@Controller
@RequestMapping("warn")
public class WarnController extends BaseController{

    @Autowired
    WarnService warnService;
    @Autowired
    UserService userService;

    @RequestMapping("warnCommit")
    @ResponseBody
    public ExecuteResult warnCommit(Integer contentId,String content){
        Content content1 = new Content();
        content1.setId(contentId);
        Warn warn = new Warn();
        warn.setWarnContent(content);
        warn.setContent(content1);
        warn.setUser(getUser());
        warn.setCreateTime(new Date());
        warn.setIsDo(0);
        warnService.saveAndFlush(warn);
        return ExecuteResult.ok();
    }

    @RequestMapping("findAll")
    @ResponseBody
    public ExecuteResult findAll(){

        List<Warn> list = warnService.findAllByIsDo(0);
        return ExecuteResult.ok(list);

    }

    @RequestMapping("pass")
    @ResponseBody
    public ExecuteResult pass(Integer id){

        Warn warn = warnService.findById(id).orElse(null);
        Integer userId = warn.getUser().getId();
        User user = userService.findById(userId).orElse(null);
        user.setInvalid(1);
        userService.saveAndFlush(user);
        warn.setIsDo(1);
        warnService.saveAndFlush(warn);
        return ExecuteResult.ok();

    }

    @RequestMapping("refuse")
    @ResponseBody
    public ExecuteResult refuse(Integer id){
        warnService.deleteById(id);
        return ExecuteResult.ok();

    }

}
