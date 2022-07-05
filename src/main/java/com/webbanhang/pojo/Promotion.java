package com.webbanhang.pojo;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "tb_promotion", schema = "webdidong")
public class Promotion {
    @Id
    @Column(name = "id", nullable = false)
    private String id;

    @Column(name = "sale")
    private String sale;

//    @OneToMany(mappedBy = "promotion", cascade = CascadeType.ALL)
//    private Set<Product> products = new HashSet<>();

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
