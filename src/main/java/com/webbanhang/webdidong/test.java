package com.webbanhang.webdidong;

import com.webbanhang.DAO.CategoryDAO;
import com.webbanhang.pojo.Category;
import org.hibernate.Session;

import java.util.Date;
import java.util.List;
import java.util.Random;

public class test {
    public static void main(String[] args){
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();

//            Query<OrderEntity> query = session.createQuery("FROM OrderEntity ");
//            List<OrderEntity> cats = query.list();
//            cats.forEach(c -> System.out.println(c.getOid()));
//            OrderDao orderDao = new OrderDao();
//            List<OrderDao> cats = orderDao.getListOrder();
//            cats.forEach(c -> System.out.println(c.));

//            Query<DetailorderEntity> query = session.createQuery("FROM DetailorderEntity ");
//            List<DetailorderEntity> cats = query.list();
//            cats.forEach(c -> System.out.println(c.getProduct().getId()));

//            CategoryDAO dao = new CategoryDAO();
//            List<Category> categories = dao.getListCategory();
//            categories.forEach(c -> {
//                System.out.println(c.getName());
//            });

//            Tạo số ngẫu nhiên
            Random random = new Random();
            System.out.println(java.time.LocalDateTime.now().getMonth().getValue());
            String day = String.format("%d",java.time.LocalDateTime.now().getDayOfMonth());
            String month = String.format("%d",java.time.LocalDateTime.now().getMonthValue());
            String year = String.format("%d",java.time.LocalDateTime.now().getYear());

            String str = java.time.LocalDateTime.now().toString();

            str = str.replace("-","");
            str = str.replace(":","");
            str = str.replace(".","");

            System.out.println(str + " " + str.length());
            if(day.length() < 2) {
                day = "0" + day;
            }

            if(month.length() < 2) {
                month = "0" + month;
            }

            String id = day + month + year;
            System.out.println(id);

//            ReportDao dao = new ReportDao();
//            List<Object[]> ord = dao.getStatsPie();
//            ord.forEach(c -> {
//
//                System.out.printf("Xuat ngay: %s Tổng tiền: %s    %s\n", c[0], c[1]);
//            });
        } catch (Exception e){

        }
    }
}