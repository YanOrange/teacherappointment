package com.delay.teacherappointment;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude= {DataSourceAutoConfiguration.class})
public class TeacherappointmentApplication {

    public static void main(String[] args) {
        SpringApplication.run(TeacherappointmentApplication.class, args);
    }

}
