package com.webbanhang.DAO;

import com.webbanhang.pojo.Category;
import com.webbanhang.webdidong.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.persistence.criteria.*;
import java.util.List;

public class CategoryDAO {
    private final static SessionFactory factory = HibernateUtil.getSessionFactory();

//    Insert
    public void insertCategory(Category category) {
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            session.save(category);
            session.getTransaction().commit();

        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

//    Update
    public void updateCategory(Category category){
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaUpdate<Category> update = builder.createCriteriaUpdate(Category.class);
            Root<Category> root = update.from(Category.class);
            update.set(root.get("cname"), category.getName());
            update.where(builder.equal(root.get("cid"), category.getId()));

            session.createQuery(update).executeUpdate();

            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

//    Delete
    public void deleteCategory(String id) {
        Session session = factory.openSession();
        try{
            session.getTransaction().begin();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaDelete<Category> delete = builder.createCriteriaDelete(Category.class);

//            from category
            Root<Category> root = delete.from(Category.class);

//            where <>
            delete.where(builder.equal(root.get("cid"), id));

            session.createQuery(delete).executeUpdate();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

//    Get List Category
    public List<Category> getListCategory() {
        Session session = factory.openSession();
        try {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Category> query = builder.createQuery(Category.class);
            Root<Category> root = query.from(Category.class);
            query.select(root);

            return session.createQuery(query).getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

//    Get Category by id
    public Category getCategory(String cid) {
        Session session = factory.openSession();
        try {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Category> query = builder.createQuery(Category.class);
            Root<Category> root = query.from(Category.class);
            query.where(builder.equal(root.get("cid"), cid));

            query.select(root);

            return session.createQuery(query).getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
