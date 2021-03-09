package com.delay.teacherappointment.controller;

import com.delay.teacherappointment.entity.User;
import com.delay.teacherappointment.repository.UserRepository;
import com.delay.teacherappointment.service.UserService;
import com.delay.teacherappointment.utils.ExecuteResult;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.rmi.server.UnicastServerRef2;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * @Author 闫金柱
 * @create 2021-3-8 15:02
 */
@Controller
@RequestMapping("user")
public class UserController extends BaseController{

    @Autowired
    UserRepository userService;

    @RequestMapping("register")
    @ResponseBody
    public ExecuteResult register(User user){
        User user2 = userService.findByUserName(user.getUserName());
        if(user2!=null){
            return ExecuteResult.fail(1,"该账号已存在");
        }
        user.setCreateTime(new Date());
        user.setInvalid(0);
        user.setReport(0);
        userService.saveAndFlush(user);
        return ExecuteResult.ok();
    }

    @RequestMapping("login")
    @ResponseBody
    public ExecuteResult login (String userName, String passWord, HttpSession session){
        User user = userService.findByUserNameAndPassWord(userName,passWord);
        if(user!=null){
            session.setAttribute("user",user);
            return ExecuteResult.ok();
        }
        return ExecuteResult.fail("账号或密码不正确");
    }

    @RequestMapping("editInfo")
    public String editInfo(Model model){
        return "edit-info";
    }

    @RequestMapping("doEditInfo")
    @ResponseBody
    public ExecuteResult doEditInfo(User user){

        User comAuthor = userService.findById(user.getId()).orElse(null);
        BeanUtils.copyProperties(user,comAuthor,"createTime","status","userName","idCard","school","education","invalid","report","isTeacher");
        userService.saveAndFlush(comAuthor);
        getSession().setAttribute("user",comAuthor);
        return ExecuteResult.ok();

    }

    @RequestMapping("ident")
    @ResponseBody
    public ExecuteResult ident(){
        User user = getUser();
        User user1 = userService.findById(user.getId()).orElse(null);
        if(!user1.getStatus().equals(0)){
            return ExecuteResult.fail("已认证");
        }
        return ExecuteResult.ok();
    }

    @RequestMapping("doGuardian")
    @ResponseBody
    public ExecuteResult doGuardian(){
        User user = getUser();
        User user1 = userService.findById(user.getId()).orElse(null);
        user1.setStatus(1);
        user1.setIsTeacher(0);
        userService.save(user1);
        return ExecuteResult.ok();
    }

    @RequestMapping("doTeacher")
    @ResponseBody
    public ExecuteResult doTeacher(String school,String education,String eduNo){
        User user = getUser();
        User user1 = userService.findById(user.getId()).orElse(null);
        user1.setStatus(1);
        user1.setSchool(school);
        user1.setEducation(education);
        user1.setEduNo(eduNo);
        user1.setIsTeacher(1);
        userService.save(user1);
        return ExecuteResult.ok();
    }

    @RequestMapping("delete")
    @ResponseBody
    public ExecuteResult delete(@RequestBody List<Integer> userIds){
        userIds.stream().forEach(o->{

            User user = userService.findById(o).orElse(null);
            user.setInvalid(1);
            userService.saveAndFlush(user);
        });
        return ExecuteResult.ok();
    }


    /**
     * 查询全部
     * @return
     */
    @RequestMapping("findAll")
    @ResponseBody
    public ExecuteResult findAll(){
        List<User> list = userService.findByInvalid(0);
        return ExecuteResult.ok(list);
    }

    /**
     * 设置审核状态
     * @param userId
     * @param state
     * @return
     */
    @RequestMapping("setState")
    @ResponseBody
    public ExecuteResult setState(Integer userId,Integer state){
        User user = userService.findById(userId).orElse(null);
        user.setStatus(state);
        userService.saveAndFlush(user);
        return ExecuteResult.ok();
    }

    /**
     * 通过状态查询全部
     * @return
     */
    @RequestMapping("findAllByStatus")
    @ResponseBody
    public ExecuteResult findAllByStatus(Integer status){
        List<User> list = userService.findByStatus(status);
        return ExecuteResult.ok(list);
    }

    @RequestMapping("findByReport")
    @ResponseBody
    public ExecuteResult reportList(){
        List<User> users = userService.findByReport(1);
        return ExecuteResult.ok(users);
    }



}
