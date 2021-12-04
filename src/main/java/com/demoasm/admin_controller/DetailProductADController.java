package com.demoasm.admin_controller;


import com.demoasm.dao.ProductDAO;
import com.demoasm.entity.Product;
import com.demoasm.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("indexAD")
public class DetailProductADController {
    //1. tiêm vào
    @Autowired
    CookieService cookieService;
    @Autowired
    ParamService paramService;
    @Autowired
    SessionService sessionService;
    @Autowired
    ProductService productService;
    @Autowired
    ShoppingCartService shoppingCartService;
    @Autowired
    AccountService userService;
    @Autowired
    ProductDAO productDAO;

    @GetMapping("DetailProduct")
    public String showlogin(Model model) {
            Product item = new Product();
            model.addAttribute("item", item);
            List<Product> items = productDAO.findAll();
            model.addAttribute("items", items);


        return "/Admin/QuanLyChiTietSanPhamAD";
    }

    @RequestMapping("/createProductDetail")
    public String create(Model model, @ModelAttribute("item") @Validated Product item, Errors errors) {
        model.addAttribute("item",item);
        if (errors.hasErrors()){
            model.addAttribute("message","Vui lòng nhập các dữ liệu hợp lệ");
        }else {
            productDAO.save(item);
            model.addAttribute("message","Nhập dữ liệu thành công");
        }
        return "redirect:/indexAD/home";
    }

    @RequestMapping("/updateProductDetail")
    public String update(Product item) {
        productDAO.save(item);
        return "redirect:/indexAD/editProductDetail/" + item.getId();
    }

    @RequestMapping("/deleteProductDetail/{id}")
    public String delete(@PathVariable("id") Integer id) {
        productDAO.deleteById(id);
        return "redirect:/indexAD/home";
    }
}
