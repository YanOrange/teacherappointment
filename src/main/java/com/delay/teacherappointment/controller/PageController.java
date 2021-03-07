package com.delay.teacherappointment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
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

    @RequestMapping("person")
    public String person(Model model){
        return "person";
    }

    @RequestMapping("exit")
    @ResponseBody
    public void exit(HttpSession session){
        session.removeAttribute("user");
    }

    @RequestMapping("contentList")
    public String contentList(Model model){
        return "content-list";
    }

    @RequestMapping("register")
    public String register(Model model){
        return "register";
    }

}
