package com.webbanhang.controller;

import com.webbanhang.DAO.ProductDAO;
import com.webbanhang.DAO.PromotionDAO;
import com.webbanhang.pojo.Product;
import com.webbanhang.pojo.Promotion;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/deletePromotion"})
public class DeletePromotion extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        PromotionDAO dao = new PromotionDAO();
        System.out.println("Vào xóa promtion" + id);

        dao.deletePromotion(id);

        resp.sendRedirect("promotion");
    }
}
