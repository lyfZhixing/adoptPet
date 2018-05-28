package com.adoptPet.userInterface.entity;

import java.util.Date;

public class Applyinfo {
    private String serialno;

    private String serialno2;

    private String uname;

    private String answer1;

    private String answer2;

    private String answer3;

    private Date applytime;

    private Integer appstatus; //0 审核 1 通过 2不通过

    public String getSerialno() {
        return serialno;
    }

    public void setSerialno(String serialno) {
        this.serialno = serialno;
    }

    public String getSerialno2() {
        return serialno2;
    }

    public void setSerialno2(String serialno2) {
        this.serialno2 = serialno2;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getAnswer1() {
        return answer1;
    }

    public void setAnswer1(String answer1) {
        this.answer1 = answer1;
    }

    public String getAnswer2() {
        return answer2;
    }

    public void setAnswer2(String answer2) {
        this.answer2 = answer2;
    }

    public String getAnswer3() {
        return answer3;
    }

    public void setAnswer3(String answer3) {
        this.answer3 = answer3;
    }

    public Date getApplytime() {
        return applytime;
    }

    public void setApplytime(Date applytime) {
        this.applytime = applytime;
    }

    public Integer getAppstatus() {
        return appstatus;
    }

    public void setAppstatus(Integer appstatus) {
        this.appstatus = appstatus;
    }
}