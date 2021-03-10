package com.delay.teacherappointment.repository;

import com.delay.teacherappointment.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author 闫金柱
 * @create 2021-3-8 16:34
 */
@Repository
@Component
public interface UserRepository extends JpaRepository<User,Integer> {

    User findByUserNameAndPassWord(String userName, String passWord);

    User findByUserName(String userName);

    List<User> findByInvalid(int i);

    List<User> findByStatus(int i);

}
