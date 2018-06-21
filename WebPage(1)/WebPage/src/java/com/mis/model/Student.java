package com.mis.model;

import java.io.InputStream;
import java.io.Serializable;

public class Student implements Serializable {

    private String sno;
    private String sname;
    private String ssex;
    private int sage;
    private String sdept;
    private double savgGrade;
    private InputStream photo;
    private String photo_url;

    public Student() {
    }

    @Override
    public String toString() {
        return getSname();
    }

    /**
     * @return the sno
     */
    public String getSno() {
        return sno;
    }

    /**
     * @param sno the sno to set
     */
    public void setSno(String sno) {
        this.sno = sno;
    }

    /**
     * @return the sname
     */
    public String getSname() {
        return sname;
    }

    /**
     * @param sname the sname to set
     */
    public void setSname(String sname) {
        this.sname = sname;
    }

    /**
     * @return the ssex
     */
    public String getSsex() {
        return ssex;
    }

    /**
     * @param ssex the ssex to set
     */
    public void setSsex(String ssex) {
        this.ssex = ssex;
    }

    /**
     * @return the sage
     */
    public int getSage() {
        return sage;
    }

    /**
     * @param sage the sage to set
     */
    public void setSage(int sage) {
        this.sage = sage;
    }

    /**
     * @return the sdept
     */
    public String getSdept() {
        return sdept;
    }

    /**
     * @param sdept the sdept to set
     */
    public void setSdept(String sdept) {
        this.sdept = sdept;
    }

    /**
     * @return the savgGrade
     */
    public double getSavgGrade() {
        return savgGrade;
    }

    /**
     * @param savgGrade the savgGrade to set
     */
    public void setSavgGrade(double savgGrade) {
        this.savgGrade = savgGrade;
    }

    public InputStream getPhoto() {
        return photo;
    }

    public void setPhoto(InputStream photo) {
        this.photo = photo;
    }

    public String getPhoto_url() {
        return photo_url;
    }

    public void setPhoto_url(String photo_url) {
        this.photo_url = photo_url;
    }
    

}
