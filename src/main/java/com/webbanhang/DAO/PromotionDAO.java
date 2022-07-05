package com.webbanhang.DAO;

import com.webbanhang.pojo.Category;
import com.webbanhang.pojo.Promotion;
import com.webbanhang.webdidong.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.persistence.criteria.*;
import java.util.List;

public class PromotionDAO {
    private final static SessionFactory factory = HibernateUtil.getSessionFactory();

//    Insert
    public void insertPromotion(Promotion promotion) {
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            session.save(promotion);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

//    Update
    public void updatePromotion(Promotion promotion) {
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaUpdate<Promotion> update = builder.createCriteriaUpdate(Promotion.class);
            Root<Promotion> root = update.from(Promotion.class);
            update.set(root.get("sale"), promotion.getSale());
            update.where(builder.equal(root.get("id"),promotion.getId()));

            session.createQuery(update).executeUpdate();

            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

//    Delete
    public void deletePromotion(String id) {
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaDelete<Promotion> delete = builder.createCriteriaDelete(Promotion.class);

//            from
            Root<Promotion> root = delete.from(Promotion.class);

//            where
            delete.where(builder.equal(root.get("id"), id));

            session.createQuery(delete).executeUpdate();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

//    Get List Promotion
    public List<Promotion> getListPromotion(){
        Session session = factory.openSession();
        try{
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Promotion> query = builder.createQuery(Promotion.class);
            Root<Promotion> root = query.from(Promotion.class);

            query.select(root);

            return session.createQuery(query).getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

//    Get promotion by id
    public Promotion getPromotion(String id) {
        Session session = factory.openSession();
        try {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Promotion> query = builder.createQuery(Promotion.class);
            Root<Promotion> root = query.from(Promotion.class);
            query.where(builder.equal(root.get("id"), id));

            query.select(root);

            return session.createQuery(query).getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
