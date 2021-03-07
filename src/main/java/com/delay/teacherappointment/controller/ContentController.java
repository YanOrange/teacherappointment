package com.delay.teacherappointment.controller;

import com.delay.teacherappointment.utils.ExecuteResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author 闫金柱
 * @date 2021-3-6 20:45
 */
@Controller
@RequestMapping("content")
public class ContentController {


    @RequestMapping("findListByUserId")
    @ResponseBody
    public ExecuteResult findListByUserId(){
        return null;
    }



}
