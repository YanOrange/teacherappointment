package com.delay.teacherappointment.service;

import com.delay.teacherappointment.entity.Comment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface CommentService extends JpaRepository<Comment,Integer> {

    List<Comment> findByContentId(Integer contentId);
}
