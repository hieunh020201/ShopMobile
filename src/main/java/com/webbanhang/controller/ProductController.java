package com.webbanhang.controller;


import com.webbanhang.DAO.CategoryDAO;
import com.webbanhang.DAO.ImageDAO;
import com.webbanhang.DAO.ProductDAO;
import com.webbanhang.DAO.PromotionDAO;
import com.webbanhang.pojo.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/controlProduct"})
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

    private void insertProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//        Call Sample Image
        Image image = new ImageDAO().getImage("1");
        if(image != null) {
            System.out.println("image is not null");
            //        Save Image
            insertImage(req.getParameter("image_main"), req.getParameter("url_image_main"));
            insertImage(req.getParameter("image_1"), req.getParameter("url_image_1"));
            insertImage(req.getParameter("image_2"), req.getParameter("url_image_2"));
            insertImage(req.getParameter("image_3"), req.getParameter("url_image_3"));
        } else {
            System.out.println("image is null");
            insertPrimaryImage();
            //        Save Image
            insertImage(req.getParameter("image_main"), req.getParameter("url_image_main"));
            insertImage(req.getParameter("image_1"), req.getParameter("url_image_1"));
            insertImage(req.getParameter("image_2"), req.getParameter("url_image_2"));
            insertImage(req.getParameter("image_3"), req.getParameter("url_image_3"));
        }

        Product product = new Product();
        ProductDAO dao = new ProductDAO();

//        Save Image Product
        Image_Product image_product = insertImageProduct(dao, req);

        Category category = (new CategoryDAO()).getCategory(req.getParameter("category"));
        String id = randomId(category.getId());

//        Save Product
        product.setId(id);
        product.setName(req.getParameter("name"));
        product.setPrice(Double.parseDouble(req.getParameter("price")));
        product.setQuantity(Integer.parseInt(req.getParameter("quantity")));
        product.setDescription(req.getParameter("description"));
        product.setImage(image_product);
        product.setCategory(category);

        System.out.println("promotion is: " + req.getParameter("promotion"));
        if(req.getParameter("promotion") == null) {
            System.out.println("promotion is null");
            product.setPromotion(null);
        } else {
            System.out.println("promotion is not null");
            product.setPromotion(new PromotionDAO().getPromotion(req.getParameter("promotion")));
        }
        dao.insertProduct(product);

    }

    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) {

        ProductDAO dao = new ProductDAO();
        Image_Product image_product = dao.getImageProduct(req.getParameter("id_image"));

//        main_image
        if (image_product.getMain_image().getId().equals("1")) {
            System.out.println("=1");
            insertImage(req.getParameter("image_main"), req.getParameter("url_image_main"));

        } else {
            System.out.println("!1");
            updateImage(req.getParameter("image_main"), req.getParameter("url_image_main"));
        }

//        support_image1
        if (image_product.getSupport_image_1().getId().equals("1")) {
            System.out.println("=1");
            insertImage(req.getParameter("image_1"), req.getParameter("url_image_1"));

        } else {
            System.out.println("!1");
            updateImage(req.getParameter("image_1"), req.getParameter("url_image_1"));
        }
//        support_image2
        if (image_product.getSupport_image_1().getId().equals("1")) {
            System.out.println("=1");
            insertImage(req.getParameter("image_2"), req.getParameter("url_image_2"));

        } else {
            System.out.println("!1");
            updateImage(req.getParameter("image_2"), req.getParameter("url_image_2"));
        }

//        support_image3
        if (image_product.getSupport_image_1().getId().equals("1")) {
            System.out.println("=1");
            insertImage(req.getParameter("image_3"), req.getParameter("url_image_3"));

        } else {
            System.out.println("!1");
            updateImage(req.getParameter("image_3"), req.getParameter("url_image_3"));
        }

        Image_Product imageProduct = updateImageProduct(image_product, req);

//        update product
        Product product = new Product();
        Category category = (new CategoryDAO()).getCategory(req.getParameter("category"));

        product.setId(req.getParameter("id"));
        product.setName(req.getParameter("name"));
        product.setPrice(Double.parseDouble(req.getParameter("price")));
        product.setQuantity(Integer.parseInt(req.getParameter("quantity")));
        product.setDescription(req.getParameter("description"));
        product.setCategory(category);
        product.setImage(imageProduct);

        System.out.println("promotion is: " + req.getParameter("promotion"));
        PromotionDAO promotionDAO = new PromotionDAO();
        Promotion promotion = promotionDAO.getPromotion(req.getParameter("promotion"));
        if(promotion == null) {
            System.out.println("promotion is null");
            product.setPromotion(null);
        } else {
            System.out.println("Promotion is not null");

            System.out.println("Promotion is: " + promotion.getSale());
            product.setPromotion(new PromotionDAO().getPromotion(req.getParameter("promotion")));
            System.out.println("Product has promotion: " + product.getPromotion().getSale());
        }

        dao.updateProduct(product);
    }

    private String randomId(String cid){
        String str = java.time.LocalDateTime.now().toString();

        str = str.replace("-","");
        str = str.replace(":","");
        str = str.replace(".","");

        str = cid + str;

        return str;
    }

    private void updateImage(String id, String url) {
        ImageDAO dao = new ImageDAO();
        Image image = new Image();
        image.setId(id);
        image.setUrl_image(url);
        dao.updateImage(image);
    }

    private Image_Product updateImageProduct(Image_Product image_product, HttpServletRequest req) {
        ImageDAO imageDAO = new ImageDAO();
        ProductDAO dao = new ProductDAO();
//        Update Image Product
        image_product.setMain_image(imageDAO.getImage(req.getParameter("image_main")));
        image_product.setSupport_image_1(imageDAO.getImage(req.getParameter("image_1")));
        image_product.setSupport_image_2(imageDAO.getImage(req.getParameter("image_2")));
        image_product.setSupport_image_3(imageDAO.getImage(req.getParameter("image_3")));

        dao.updateImageProduct(image_product);

        return image_product;
    }

    private void insertImage(String id, String url) {
        if(!id.equals("1")) {
            ImageDAO dao = new ImageDAO();
            Image image = new Image();
            image.setId(id);
            image.setUrl_image(url);
            dao.insertImage(image);
        }
    }

    private void insertPrimaryImage() {
        ImageDAO dao = new ImageDAO();
        Image image = new Image();
        image.setId("1");
        image.setUrl_image("../assets/images/image.jpg");
        dao.insertImage(image);
    }

    private Image_Product insertImageProduct(ProductDAO dao,HttpServletRequest req) {
        ImageDAO imageDAO = new ImageDAO();

//      Save Image Product
        Image_Product image_product = new Image_Product();
        image_product.setId("iG" + req.getParameter("image_main"));
        image_product.setMain_image(imageDAO.getImage(req.getParameter("image_main")));
        image_product.setSupport_image_1(imageDAO.getImage(req.getParameter("image_1")));
        image_product.setSupport_image_2(imageDAO.getImage(req.getParameter("image_2")));
        image_product.setSupport_image_3(imageDAO.getImage(req.getParameter("image_3")));

        dao.insertImageProduct(image_product);

        return image_product;
    }
}
