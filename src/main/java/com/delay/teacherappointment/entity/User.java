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

    private String name;

    private String age;

    private String address;

    private String phone;

    private String idCard;

    private Integer status;//0 未认证 1 已认证

    private String school;//毕业院校

    private String education;//学历

    private Integer invalid;//失效用户 0否 1是

}
