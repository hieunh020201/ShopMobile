package com.webbanhang.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_promotion", schema = "webdidong")
public class Promotion {
    @Id
    @Column(name = "id", nullable = false)
    private String id;

    @Column(name = "sale")
    private String sale;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSale() {
        return sale;
    }

    public void setSale(String sale) {
        this.sale = sale;
    }
}
