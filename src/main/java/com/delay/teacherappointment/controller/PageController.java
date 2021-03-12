package com.delay.teacherappointment.controller;

import ch.qos.logback.core.rolling.helper.IntegerTokenConverter;
import com.delay.teacherappointment.entity.Content;
import com.delay.teacherappointment.entity.User;
import com.delay.teacherappointment.service.ContentService;
import com.delay.teacherappointment.service.UserService;
import com.delay.teacherappointment.utils.ExecuteResult;
import org.springframework.beans.factory.annotation.Autowired;
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
public class PageController extends BaseController{

    @Autowired
    UserService userService;
    @Autowired
    ContentService contentService;

    @RequestMapping("index")
    public String index(){
        return "index";
    }

    @RequestMapping("type")
    public String type(){
        return "type-list";
    }

    @RequestMapping("content")
    public String content(Integer contentId,Model model){
        Content content = contentService.findById(contentId).orElse(null);
        model.addAttribute("content",content);
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

    @RequestMapping("login")
    public String login(Model model){
        return "login";
    }

    @RequestMapping("ident")
    public String ident(){
        return "ident";
    }

    @RequestMapping("teacher")
    public String teacher(String idCard,Model model){
        model.addAttribute("idCard",idCard);
        return "teacher";
    }

    @RequestMapping("publish")
    public String publish(){


        return "publish";
    }


    @RequestMapping("managerIndex")
    public String managerIndex(){
        return "admin/index";
    }
    //会员列表
    @RequestMapping("memberList")
    public String memberList(){
        return "admin/member-list";
    }

    //待审核列表
    @RequestMapping("verifyList")
    public String verifyList(){
        return "admin/verify-list";
    }

    //举报列表
    @RequestMapping("reportList")
    public String reportList(){
        return "admin/warn-list";
    }

    /**
     *欢迎页面
     * @return
     */
    @RequestMapping("welcome")
    public String welcome(){
        return "admin/welcome";
    }

    /**
     * 新增用户
     * @return
     */
    @RequestMapping("add")
    public String add(Model model){
        return "admin/person-add";
    }

    @RequestMapping("managerLogin")
    public String managerLogin(){
        return "admin/login";
    }

    @RequestMapping("search")
    public String search(){
        return "search";
    }


    @RequestMapping("adminList")
    public String adminList(){
        return "admin/admin-list";
    }


}
