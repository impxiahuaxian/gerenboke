package com.pojo;

public class Xw {
    private Integer id;

    private String bt;

    private String fl;

    private String jj;

    private String url;

    private String sj;

    private String fbr;

    private String nr;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBt() {
        return bt;
    }

    public void setBt(String bt) {
        this.bt = bt == null ? null : bt.trim();
    }

    public String getFl() {
        return fl;
    }

    public void setFl(String fl) {
        this.fl = fl == null ? null : fl.trim();
    }

    public String getJj() {
        return jj;
    }

    public void setJj(String jj) {
        this.jj = jj == null ? null : jj.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getSj() {
        return sj;
    }

    public void setSj(String sj) {
        this.sj = sj == null ? null : sj.trim();
    }

    public String getFbr() {
        return fbr;
    }

    public void setFbr(String fbr) {
        this.fbr = fbr == null ? null : fbr.trim();
    }

    public String getNr() {
        return nr;
    }

    public void setNr(String nr) {
        this.nr = nr == null ? null : nr.trim();
    }
}