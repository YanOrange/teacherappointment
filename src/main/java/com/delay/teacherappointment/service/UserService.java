package com.delay.teacherappointment.service;

import com.delay.teacherappointment.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;


public interface UserService extends JpaRepository<User,Integer> {

    User findByUserNameAndPassWord(String userName, String passWord);
}
