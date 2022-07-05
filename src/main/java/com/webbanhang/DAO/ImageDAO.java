package com.webbanhang.DAO;

import com.webbanhang.pojo.Image;
import com.webbanhang.webdidong.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.CriteriaUpdate;
import javax.persistence.criteria.Root;

public class ImageDAO {
    private final static SessionFactory factory = HibernateUtil.getSessionFactory();

//    Insert Image
    public void insertImage(Image image){
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            session.save(image);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

//    Update Image
    public void updateImage(Image image) {
        Session session = factory.openSession();
        try {
            session.getTransaction().begin();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaUpdate<Image> update = builder.createCriteriaUpdate(Image.class);
            Root<Image> root = update.from(Image.class);

            update.set(root.get("url_image"), image.getUrl_image());
            update.where(builder.equal(root.get("id"), image.getId()));

            session.createQuery(update).executeUpdate();

            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

//    Get Image by id
    public Image getImage(String id) {
        Session session = factory.openSession();
        try {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Image> query = builder.createQuery(Image.class);
            Root<Image> root = query.from(Image.class);

            query.where(builder.equal(root.get("id"), id));

            query.select(root);

            return session.createQuery(query).getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
