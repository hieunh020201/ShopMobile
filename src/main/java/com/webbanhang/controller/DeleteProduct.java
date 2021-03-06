package com.webbanhang.controller;

import com.webbanhang.DAO.ProductDAO;
import com.webbanhang.pojo.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/deleteProduct"})
public class DeleteProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        ProductDAO dao = new ProductDAO();
        System.out.println("Vào xóa sản phẩm " + id);

        Product product = dao.getProduct(id);
        dao.deleteProduct(id);
        dao.deleteImageProduct(product.getImage().getId());

        resp.sendRedirect("product");
    }
}
