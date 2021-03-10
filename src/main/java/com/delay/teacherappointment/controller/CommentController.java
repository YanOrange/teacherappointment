package com.delay.teacherappointment.controller;

import com.delay.teacherappointment.entity.Comment;
import com.delay.teacherappointment.entity.Content;
import com.delay.teacherappointment.service.CommentService;
import com.delay.teacherappointment.utils.ExecuteResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

/**
 * @author 闫金柱
 * @date 2021-3-9 23:07
 */
@Controller
@RequestMapping("comment")
public class CommentController extends BaseController{

    @Autowired
    CommentService commentService;


    @RequestMapping("commit")
    @ResponseBody
    public ExecuteResult commit(String comment,Integer contentId){
        Comment comment1 = new Comment();
        comment1.setComment(comment);
        Content content = new Content();
        content.setId(contentId);
        comment1.setContent(content);
        comment1.setCreateTime(new Date());
        comment1.setUser(getUser());
        commentService.saveAndFlush(comment1);
        return ExecuteResult.ok();
    }

}
