package com.kk.webvote;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
// 开启扫描mapper
@MapperScan("com.kk.webvote.dao")
public class WebvoteApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(WebvoteApplication.class, args);
	}

}
