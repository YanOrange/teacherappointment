package com.delay.teacherappointment.service;

import com.delay.teacherappointment.entity.Admin;
import com.delay.teacherappointment.entity.Comment;
import org.springframework.data.jpa.repository.JpaRepository;


public interface AdminService extends JpaRepository<Admin,Integer> {

    Admin findByAccount(String account);

    Admin findByAccountAndPassWord(String userName, String passWord);
}
