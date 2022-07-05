package com.webbanhang.controller;

import com.webbanhang.DAO.PromotionDAO;
import com.webbanhang.pojo.Promotion;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/promotion"})
public class ReadPromotion extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        String url = "/admin/PromotionManagement.jsp";

//        Call List Promotion
        PromotionDAO dao = new PromotionDAO();
        List<Promotion> promotions = dao.getListPromotion();
        req.setAttribute("promotions", promotions);

        RequestDispatcher dispatcher = req.getRequestDispatcher(url);
        dispatcher.forward(req, resp);
    }
}
