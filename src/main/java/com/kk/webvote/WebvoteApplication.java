package com.kk.webvote;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
// 开启扫描mapper
@MapperScan("com.kk.webvote.dao")
public class WebvoteApplication {

	public static void main(String[] args) {
		SpringApplication.run(WebvoteApplication.class, args);
	}

}
