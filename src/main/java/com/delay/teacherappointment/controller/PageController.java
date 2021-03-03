package com.delay.teacherappointment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.lang.reflect.Array;

/**
 * @author 闫金柱
 * @date 2021-2-28 18:37
 */
@Controller
@RequestMapping("page")
public class PageController {

    @RequestMapping("index")
    public String index(){
        return "index";
    }

    @RequestMapping("type")
    public String type(){
        return "type-list";
    }

    @RequestMapping("content")
    public String content(){
        return "content";
    }

}
