package com.webbanhang.DAO;

import com.webbanhang.pojo.Category;
import com.webbanhang.pojo.Image_Product;
import com.webbanhang.pojo.Product;
import com.webbanhang.webdidong.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.persistence.criteria.*;
import java.util.List;

public class ProductDAO {
    private final static SessionFactory factory = HibernateUtil.getSessionFactory();

//    Insert product
    public void insertProduct(Product product){
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            session.save(product);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }



//    Update product
    public void updateProduct(Product product) {
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaUpdate<Product> update = builder.createCriteriaUpdate(Product.class);
            Root<Product> root = update.from(Product.class);
            update.set(root.get("name"), product.getName());
            update.set(root.get("description"), product.getDescription());
            update.set(root.get("price"), product.getPrice());
            update.set(root.get("quantity"), product.getQuantity());
            update.set(root.get("category"), product.getCategory());

            update.set(root.get("promotion"), product.getPromotion());
            System.out.println("Promotion is: "+ root.get("promotion") + " " + product.getPromotion());
            update.set(root.get("image"), product.getImage());

            update.where(builder.equal(root.get("id"), product.getId()));

            session.createQuery(update).executeUpdate();

            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

//    Delete product
    public void deleteProduct(String id) {
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaDelete<Product> delete = builder.createCriteriaDelete(Product.class);
            Root<Product> root = delete.from(Product.class);
            delete.where(builder.equal(root.get("id"), id));
            System.out.println("Đang xóa");

            session.createQuery(delete).executeUpdate();

            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Không xóa");
            session.getTransaction().rollback();
        }
    }

//    Get List Product
    public List<Product> getListProduct() {
        Session session = factory.openSession();
        try{
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Product> query = builder.createQuery(Product.class);
            Root<Product> root = query.from(Product.class);
            query.select(root);

            return session.createQuery(query).getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    //    Get Product by id
    public Product getProduct(String id) {
        Session session = factory.openSession();
        try{
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Product> query = builder.createQuery(Product.class);
            Root<Product> root = query.from(Product.class);
            query.where(builder.equal(root.get("id"), id));

            query.select(root);

            return session.createQuery(query).getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

//    Insert Image_product
    public void insertImageProduct(Image_Product image_product){
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            session.save(image_product);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

    //    Update product
    public void updateImageProduct(Image_Product image_product) {
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaUpdate<Image_Product> update = builder.createCriteriaUpdate(Image_Product.class);
            Root<Image_Product> root = update.from(Image_Product.class);
            update.set(root.get("id"), image_product.getId());
            update.set(root.get("main_image"), image_product.getMain_image());
            update.set(root.get("support_image_1"), image_product.getSupport_image_1());
            update.set(root.get("support_image_2"), image_product.getSupport_image_2());
            update.set(root.get("support_image_3"), image_product.getSupport_image_3());

            update.where(builder.equal(root.get("id"), image_product.getId()));

            session.createQuery(update).executeUpdate();

            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

    //    Delete Image_product
    public void deleteImageProduct(String id) {
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaDelete<Image_Product> delete = builder.createCriteriaDelete(Image_Product.class);
            Root<Image_Product> root = delete.from(Image_Product.class);
            delete.where(builder.equal(root.get("id"), id));

            session.createQuery(delete).executeUpdate();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

//    Get Image_Product
    public Image_Product getImageProduct(String imageID) {
        Session session = factory.openSession();
        try{
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Image_Product> query = builder.createQuery(Image_Product.class);
            Root<Image_Product> root = query.from(Image_Product.class);

            query.select(root);

            query.where(builder.equal(root.get("id"), imageID));

            return session.createQuery(query).getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
