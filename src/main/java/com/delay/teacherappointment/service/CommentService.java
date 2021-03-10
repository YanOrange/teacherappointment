package com.delay.teacherappointment.service;

import com.delay.teacherappointment.entity.Comment;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CommentService extends JpaRepository<Comment,Integer> {

}
