package com.pojo;

public class Pl {
    private Integer id;

    private String member;

    private String nr;

    private String sj;

    private String hf;

    private String bkid;

    private String bt;

    private String sh;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMember() {
        return member;
    }

    public void setMember(String member) {
        this.member = member == null ? null : member.trim();
    }

    public String getNr() {
        return nr;
    }

    public void setNr(String nr) {
        this.nr = nr == null ? null : nr.trim();
    }

    public String getSj() {
        return sj;
    }

    public void setSj(String sj) {
        this.sj = sj == null ? null : sj.trim();
    }

    public String getHf() {
        return hf;
    }

    public void setHf(String hf) {
        this.hf = hf == null ? null : hf.trim();
    }

    public String getBkid() {
        return bkid;
    }

    public void setBkid(String bkid) {
        this.bkid = bkid == null ? null : bkid.trim();
    }

    public String getBt() {
        return bt;
    }

    public void setBt(String bt) {
        this.bt = bt == null ? null : bt.trim();
    }

    public String getSh() {
        return sh;
    }

    public void setSh(String sh) {
        this.sh = sh == null ? null : sh.trim();
    }
}