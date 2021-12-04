package com.demoasm.admin_controller;

import com.demoasm.dao.ProductDAO;
import com.demoasm.entity.Product;
import com.demoasm.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
// @RestController dùng cho API,còn return View HTML thì dùng @Controller
@RequestMapping("indexAD")
public class ProductADController {

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

    @GetMapping("admin")
    public String admin() {
        return "/Admin/loginAD";
    }
    @GetMapping("admin")
    public String admin2() {
        return "/Admin/loginAD";
    }

    @GetMapping("home")
    public String showshop(Model model, @RequestParam("show") Optional<Integer> show) {
        List<Product> ls = productService.findAll();
        model.addAttribute("list_product", ls);
        PageRequest pageable = PageRequest.of(show.orElse(2),8);
        Page<Product> page = productService.findAll(pageable);
        model.addAttribute("list_product", page);
        return "/Admin/QuanLySanPhamAD"; //3. view trang sản phẩm
    }

    @PostMapping("shop")
    public String searchAndPage(Model model,
                                @RequestParam("keywords") Optional<String> kw,
                                @RequestParam("show") Optional<Integer> p) {
        String kwords = kw.orElse(sessionService.get("keywords", ""));
        sessionService.set("keywords", kwords);
        Pageable pageable = PageRequest.of(p.orElse(0), 8);
        Page<Product> page = productDAO.findAllByNameLike("%"+kwords+"%", pageable);
        model.addAttribute("list_product", page);
        return "/Admin/QuanLySanPhamAD";
    }

    @PostMapping("home")
    public String search(Model model,
                         @RequestParam("min") Optional<Float> min,
                         @RequestParam("max") Optional<Float> max,
                         @RequestParam("show") Optional<Integer> show) {
        float minPrice = min.orElse(Float.MIN_VALUE);
        float maxPrice = max.orElse(Float.MAX_VALUE);
        PageRequest pageable = PageRequest.of(show.orElse(0),8);
        Page<Product> page = productDAO.findByPrice(minPrice, maxPrice, pageable);
        model.addAttribute("list_product", page);
        return "/Admin/QuanLySanPhamAD";
    }
    @GetMapping("editProductDetail/{id}")
    public String edit(Model model, @PathVariable("id") Integer id) {
        Product item = productDAO.findById(id).get();
        model.addAttribute("item", item);
        List<Product> items = productDAO.findAll();
        model.addAttribute("items", items);
        return "/Admin/QuanLyChiTietSanPhamAD";
    }
}
