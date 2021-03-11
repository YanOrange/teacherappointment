package com.delay.teacherappointment.service;

import com.delay.teacherappointment.entity.Content;
import com.delay.teacherappointment.entity.User;
import com.delay.teacherappointment.utils.ExecuteResult;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


public interface ContentService extends JpaRepository<Content,Integer> {

    List<Content> findByUserId(Integer id);

    List<Content> findByType(Integer typeId);

    @Query(nativeQuery = true, value="select c.* from t_content c limit ?1")
    List<Content> findByLimit(Integer num);

    List<Content> findByTitleLike(String s);
}
