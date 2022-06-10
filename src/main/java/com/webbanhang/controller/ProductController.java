package com.webbanhang.controller;


import com.webbanhang.DAO.CategoryDAO;
import com.webbanhang.DAO.ProductDAO;
import com.webbanhang.DAO.PromotionDAO;
import com.webbanhang.pojo.Category;
import com.webbanhang.pojo.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/ControlProduct"})
public class ProductController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        String action = req.getParameter("action");
        if(action.equals("CREATE")) {
            insertProduct(req, resp);
        } else if (action.equals("UPDATE"))
        {
            updateProduct(req, resp);
        }

        resp.sendRedirect("product");
    }

    private void insertProduct(HttpServletRequest req, HttpServletResponse resp) {
        Product product = new Product();

        Category category = (new CategoryDAO()).getCategory(req.getParameter("category"));

        product.setId(randomId(category.getId()));
        product.setName(req.getParameter("name"));
        product.setPrice(Double.parseDouble(req.getParameter("price")));
        product.setQuantity(Integer.parseInt(req.getParameter("quantity")));
        product.setDescription(req.getParameter("description"));
        product.setImage(req.getParameter("image"));
        product.setCategory(category);

        if(req.getParameter("promotion") != null) {
            product.setPromotion(null);
        } else {
            product.setPromotion(new PromotionDAO().getPromotion(req.getParameter("promotion")));
        }

        ProductDAO dao = new ProductDAO();
        dao.insertProduct(product);
    }

    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) {
        Product product = new Product();

        Category category = (new CategoryDAO()).getCategory(req.getParameter("category"));
        product.setId(req.getParameter("id"));
        product.setName(req.getParameter("name"));
        product.setPrice(Double.parseDouble(req.getParameter("price")));
        product.setQuantity(Integer.parseInt(req.getParameter("quantity")));
        product.setDescription(req.getParameter("description"));
        product.setImage(req.getParameter("image"));
        product.setCategory(category);

        if(req.getParameter("promotion") != null) {
            product.setPromotion(null);
        } else {
            product.setPromotion(new PromotionDAO().getPromotion(req.getParameter("promotion")));
        }

        ProductDAO dao = new ProductDAO();
        dao.insertProduct(product);
    }

    private String randomId(String cid){
        String str = java.time.LocalDateTime.now().toString();

        str = str.replace("-","");
        str = str.replace(":","");
        str = str.replace(".","");

        str = cid + str;

        return str;
    }
}
