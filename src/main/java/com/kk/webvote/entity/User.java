package com.kk.webvote.entity;

import com.kk.webvote.entity.base.BaseEntity;

public class User extends BaseEntity{

    // 用户id
    private Integer id;
    // 用户姓名
    private String userName;
    // 用户年龄
    private Integer age;
    // 用户性别
    private String gender;
    // 用户登陆名
    private String loginId;
    // 用户登陆密码
    private String password;
    // 用户地址
    private String address;

    private String email;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getLoginId() {
        return loginId;
    }

    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", age='" + age + '\'' +
                ", gender='" + gender + '\'' +
                ", loginId='" + loginId + '\'' +
                ", password='" + password + '\'' +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
