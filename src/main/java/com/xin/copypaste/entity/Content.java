package com.xin.copypaste.entity;

import org.apache.ibatis.type.Alias;

import java.util.Date;

@Alias("content")
public class Content {
    private Long id;
    private String text;
    private Date createdTime;
    private Date updatedTime;
    private String ip;
    private String browser;
    private boolean isDelete;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    public Date getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Date updatedTime) {
        this.updatedTime = updatedTime;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getBrowser() {
        return browser;
    }

    public void setBrowser(String browser) {
        this.browser = browser;
    }

    public boolean isDelete() {
        return isDelete;
    }

    public void setDelete(boolean delete) {
        isDelete = delete;
    }

    @Override
    public String toString() {
        return "Content{" +
                "id=" + id +
                ", text='" + text + '\'' +
                ", createdTime=" + createdTime +
                ", updatedTime=" + updatedTime +
                ", ip='" + ip + '\'' +
                ", browser='" + browser + '\'' +
                '}';
    }
}
