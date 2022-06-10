package com.webbanhang.DAO;

import com.webbanhang.pojo.Product;
import com.webbanhang.webdidong.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.persistence.criteria.*;
import java.util.List;

public class ProductDAO {
    private final static SessionFactory factory = HibernateUtil.getSessionFactory();

//    Insert
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

//    Update
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
            update.set(root.get("image"), product.getImage());
            update.set(root.get("quantity"), product.getQuantity());
            update.set(root.get("category"), product.getCategory());
            update.set(root.get("promotion"), product.getPromotion());

            update.where(builder.equal(root.get("id"), product.getId()));

            session.createQuery(update).executeUpdate();

            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

//    Delete
    public void deleteProduct(String id) {
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaDelete<Product> delete = builder.createCriteriaDelete(Product.class);
            Root<Product> root = delete.from(Product.class);
            delete.where(builder.equal(root.get("id"), id));

            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

//    Get Product
    public List<Product> getListProduct() {
        Session session = factory.openSession();
        try{
            session.getTransaction().begin();
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
}
