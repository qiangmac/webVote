package com.kk.webvote.entity;

import com.kk.webvote.entity.base.BaseEntity;

import java.util.Date;

public class Vote extends BaseEntity {

    // 投票Id
    private Integer id;

    // 投票标题
    private String title;

    // 投票描述
    private String description;

    // 投票创建时间
    private Date createTime;

    // 投票创建人Id
    private Integer createUserId;

    // 投票创建人登录ID
    private String createUserLoginId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(Integer createUserId) {
        this.createUserId = createUserId;
    }

    public String getCreateUserLoginId() {
        return createUserLoginId;
    }

    public void setCreateUserLoginId(String createUserLoginId) {
        this.createUserLoginId = createUserLoginId;
    }

    @Override
    public String toString() {
        return "Vote{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", createTime=" + createTime +
                ", createUserId=" + createUserId +
                ", createUserLoginId='" + createUserLoginId + '\'' +
                '}';
    }
}
