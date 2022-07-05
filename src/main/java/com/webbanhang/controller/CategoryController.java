package com.webbanhang.controller;

import com.webbanhang.DAO.CategoryDAO;
import com.webbanhang.pojo.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/controlCategory"})
public class CategoryController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        String action = req.getParameter("action");
        if(action.equals("CREATE")) {
            insertCategory(req, resp);
        } else if (action.equals("UPDATE"))
        {
            updateCategory(req, resp);
        }

        resp.sendRedirect("category");
    }

    private void insertCategory(HttpServletRequest req, HttpServletResponse resp) {
        Category category = new Category();
        category.setId(req.getParameter("id"));
        category.setName(req.getParameter("name"));

        CategoryDAO dao = new CategoryDAO();
        dao.insertCategory(category);
    }

    private void updateCategory(HttpServletRequest req, HttpServletResponse resp) {
        Category category = new Category();
        category.setId(req.getParameter("id"));
        category.setName(req.getParameter("name"));

        CategoryDAO dao = new CategoryDAO();
        dao.updateCategory(category);
    }
}
