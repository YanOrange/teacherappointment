package com.delay.teacherappointment.controller;

import com.delay.teacherappointment.entity.Admin;
import com.delay.teacherappointment.service.AdminService;
import com.delay.teacherappointment.utils.ExecuteResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author 闫金柱
 * @create 2021-3-10 16:48
 */
@Controller
@RequestMapping("login")
public class LoginController extends BaseController{

    @Autowired
    AdminService adminService;

    //登录后台
    @RequestMapping("doLogin")
    @ResponseBody
    public ExecuteResult login(@RequestParam("userName") String userName, @RequestParam("passWord")String passWord){

        Admin user = adminService.findByAccountAndPassWord(userName,passWord);
        if(user==null){
            return ExecuteResult.fail(1,"用户名不存在或密码错误");
        }
        getSession().setAttribute("admin",user);
        return ExecuteResult.ok();
    }

}
