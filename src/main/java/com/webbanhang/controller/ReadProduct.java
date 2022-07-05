package com.webbanhang.controller;

import com.webbanhang.DAO.CategoryDAO;
import com.webbanhang.DAO.ImageDAO;
import com.webbanhang.DAO.ProductDAO;
import com.webbanhang.DAO.PromotionDAO;
import com.webbanhang.pojo.Category;
import com.webbanhang.pojo.Image;
import com.webbanhang.pojo.Image_Product;
import com.webbanhang.pojo.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/product"})
public class ReadProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        String url = "/admin/ProductManagement.jsp";

//        Call List Product
        ProductDAO pDao = new ProductDAO();
        List<Product> products = pDao.getListProduct();
        if (products.isEmpty()) {
            System.out.println("products is null");
        }
        req.setAttribute("products", products);


//        Call List Category
        CategoryDAO cDao = new CategoryDAO();
        List<Category> categories = cDao.getListCategory();
        req.setAttribute("categories", categories);

        RequestDispatcher dispatcher = req.getRequestDispatcher(url);
        dispatcher.forward(req, resp);
    }
}
