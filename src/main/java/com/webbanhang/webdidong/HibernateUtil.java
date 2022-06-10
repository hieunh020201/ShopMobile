package com.webbanhang.webdidong;

import com.webbanhang.pojo.Category;
import com.webbanhang.pojo.Product;
import com.webbanhang.pojo.Promotion;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import java.util.Properties;

public class HibernateUtil {
    private final static SessionFactory FACTORY;

    static {
        org.hibernate.cfg.Configuration conf = new Configuration();
        Properties pros = new Properties();
        pros.put(Environment.DIALECT, "org.hibernate.dialect.MySQLDialect");
        pros.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
        pros.put(Environment.URL, "jdbc:mysql://localhost:3306/webdidong");
        pros.put(Environment.USER, "root");
        pros.put(Environment.PASS, "123456789hieu");

        conf.setProperties(pros);

        conf.addAnnotatedClass(Category.class);
        conf.addAnnotatedClass(Product.class);
        conf.addAnnotatedClass(Promotion.class);
        ServiceRegistry registry = new StandardServiceRegistryBuilder().applySettings(conf.getProperties()).build();
        FACTORY = conf.buildSessionFactory();
    }
    public static SessionFactory getSessionFactory() {
        return FACTORY;
    }
}
