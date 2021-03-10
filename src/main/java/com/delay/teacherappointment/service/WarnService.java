package com.delay.teacherappointment.service;

import com.delay.teacherappointment.entity.Warn;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface WarnService extends JpaRepository<Warn,Integer> {

    List<Warn> findAllByIsDo(int i);
}
