package com.delay.teacherappointment.controller;

import com.delay.teacherappointment.entity.User;
import com.delay.teacherappointment.repository.UserRepository;
import com.delay.teacherappointment.service.UserService;
import com.delay.teacherappointment.utils.ExecuteResult;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * @Author 闫金柱
 * @create 2021-3-8 15:02
 */
@Controller
@RequestMapping("user")
public class UserController extends BaseController{

//    @Autowired
//    UserRepository userService;

    @RequestMapping("register")
    @ResponseBody
    public ExecuteResult register(User user){
//        User user2 = userService.findByUserName(user.getUserName());
//        if(user2!=null){
//            return ExecuteResult.fail(1,"该账号已存在");
//        }
        user.setCreateTime(new Date());
        user.setInvalid(0);
//        userService.saveAndFlush(user);
        return ExecuteResult.ok();
    }

    @RequestMapping("login")
    @ResponseBody
    public ExecuteResult login (String userName, String passWord, HttpSession session){
//        User user = userService.findByUserNameAndPassWord(userName,passWord);
//        if(user!=null){
//            session.setAttribute("user",user);
//            return ExecuteResult.ok();
//        }
        return ExecuteResult.fail("账号或密码不正确");
    }

    @RequestMapping("editInfo")
    public String editInfo(Model model){
        return "edit-info";
    }

    @RequestMapping("doEditInfo")
    @ResponseBody
    public ExecuteResult doEditInfo(User user){

//        User comAuthor = userService.findById(user.getId()).orElse(null);
//        BeanUtils.copyProperties(user,comAuthor,"createTime","status","userName","idCard","school","education","invalid");
//        userService.saveAndFlush(comAuthor);
//        getSession().setAttribute("user",comAuthor);
        return ExecuteResult.ok();

    }

}