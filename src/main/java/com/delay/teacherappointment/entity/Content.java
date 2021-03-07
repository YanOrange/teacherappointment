package com.delay.teacherappointment.entity;

import com.delay.teacherappointment.utils.ExecuteResult;
import lombok.Data;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * @author 闫金柱
 * @date 2021-3-6 20:19
 */
@Entity
@Table(name = "t_content")
@Data
public class Content {

    private String title;

    private String content;//内容

    private String description;//简介

    private Double price;//多少钱一小时

    private String lesson;//课程

    private String fit;//适合人群

    private String phone;//联系方式

    private String address;//家庭住址

    private Integer status;//文章类型 0家教贴 1求助帖


}
