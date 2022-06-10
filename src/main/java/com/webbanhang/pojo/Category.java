package com.webbanhang.pojo;


import javax.persistence.*;

@Entity
@Table(name = "tb_category", schema = "webdidong")
public class Category{
    @Id
    @Column(name = "cid", nullable = false)
    private String cid;
    @Column(name = "cname")
    private String cname;

    public String getId() {
        return cid;
    }

    public void setId(String cid) {
        this.cid = cid;
    }

    public String getName() {
        return cname;
    }

    public void setName(String cname) {
        this.cname = cname;
    }
}
