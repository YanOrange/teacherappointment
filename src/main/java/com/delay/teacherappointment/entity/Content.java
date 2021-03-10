package com.delay.teacherappointment.entity;

import com.delay.teacherappointment.utils.ExecuteResult;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.persistence.*;
import java.util.Date;

/**
 * @author 闫金柱
 * @date 2021-3-6 20:19
 */
@Entity
@Table(name = "t_content")
@Data
public class Content {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String title;

    private String content;//内容

    private String description;//简介

    private Double price;//多少钱一小时

    private String lesson;//课程

    private Integer type;//分类 0 小学，1中学，2高中，3中考，4高考，5小升初 6篮球，7钢琴，8舞蹈

    private String fit;//适合人群

    private String phone;//联系方式

    private String address;//家庭住址

    private Integer status;//文章类型 0家教贴 1求助帖

    @ManyToOne
    @JoinColumn(name="user_id")
    private User user;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;


}
