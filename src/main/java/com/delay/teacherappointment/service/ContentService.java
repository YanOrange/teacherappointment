package com.delay.teacherappointment.service;

import com.delay.teacherappointment.entity.Content;
import com.delay.teacherappointment.entity.User;
import com.delay.teacherappointment.utils.ExecuteResult;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface ContentService extends JpaRepository<Content,Integer> {

    List<Content> findByUserId(Integer id);
}
