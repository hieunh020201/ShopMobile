package com.webbanhang.pojo;

import javax.persistence.*;

@Entity
@Table(name = "tb_image_product", schema = "webdidong")
public class Image_Product {
    @Id
    private String id;

    @ManyToOne
    @JoinColumn(name = "main_image")
    private Image main_image;

    @ManyToOne
    @JoinColumn(name = "support_image_1")
    private Image support_image_1;

    @ManyToOne
    @JoinColumn(name = "support_image_2")
    private Image support_image_2;

    @ManyToOne
    @JoinColumn(name = "support_image_3")
    private Image support_image_3;

    @OneToOne(mappedBy = "image")
    private Product product;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Image getMain_image() {
        return main_image;
    }

    public void setMain_image(Image main_image) {
        this.main_image = main_image;
    }

    public Image getSupport_image_1() {
        return support_image_1;
    }

    public void setSupport_image_1(Image support_image_1) {
        this.support_image_1 = support_image_1;
    }

    public Image getSupport_image_2() {
        return support_image_2;
    }

    public void setSupport_image_2(Image support_image_2) {
        this.support_image_2 = support_image_2;
    }

    public Image getSupport_image_3() {
        return support_image_3;
    }

    public void setSupport_image_3(Image support_image_3) {
        this.support_image_3 = support_image_3;
    }
}
