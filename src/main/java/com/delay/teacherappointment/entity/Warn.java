package com.delay.teacherappointment.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.hibernate.exception.DataException;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * @author 闫金柱
 * @date 2021-3-9 22:03
 */
@Data
@Entity
@Table(name = "t_warn")
public class Warn {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;//举报人

    @ManyToOne
    @JoinColumn(name = "content_id")
    private Content content;

    private String warnContent;//举报内容

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;

    private Integer isDo;//0未处理 1已处理
}
