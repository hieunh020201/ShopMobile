package com.webbanhang.controller;

import com.webbanhang.DAO.CategoryDAO;
import com.webbanhang.DAO.PromotionDAO;
import com.webbanhang.pojo.Category;
import com.webbanhang.pojo.Promotion;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/controlPromotion"})
public class PromotionController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        String action = req.getParameter("action");
        if(action.equals("CREATE")) {
            insertPromotion(req, resp);
        } else if (action.equals("UPDATE"))
        {
            updatePromotion(req, resp);
        }

        resp.sendRedirect("promotion");
    }

    private void insertPromotion(HttpServletRequest req, HttpServletResponse resp) {
        Promotion promotion = new Promotion();
        promotion.setId(req.getParameter("id"));
        promotion.setSale(req.getParameter("sale"));

        PromotionDAO dao = new PromotionDAO();
        dao.insertPromotion(promotion);
    }

    private void updatePromotion(HttpServletRequest req, HttpServletResponse resp) {
        Promotion promotion = new Promotion();
        promotion.setId(req.getParameter("id"));
        promotion.setSale(req.getParameter("sale"));

        PromotionDAO dao = new PromotionDAO();
        dao.updatePromotion(promotion);
    }
}
