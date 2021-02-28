package com.delay.teacherappointment.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * @author 闫金柱
 * @date 2021-2-28 18:37
 */
@Data
@Entity
@Table(name = "t_user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String userName;

    private String passWord;

    private Date createTime;
}
