package com.demoasm.controller;

import com.demoasm.dao.ProductDAO;
import com.demoasm.entity.Product;
import com.demoasm.service.SessionService;
import com.demoasm.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class HomeController {
    @Autowired
    SessionService session;
    @Autowired
    ProductDAO dao;
    @Autowired
    ShoppingCartService cart;

    @RequestMapping("home/index")
    public String index(Model model,
                        @RequestParam("keywords") Optional<String> kw,
                        @RequestParam("p") Optional<Integer> p) {
        model.addAttribute("cart", cart);
        model.addAttribute("getcount", cart.getCount());
        model.addAttribute("getamount", cart.getAmount());
        model.addAttribute("getsale", cart.getAmountSale());
        String kwords = kw.orElse(session.get("keywords", ""));
        session.set("keywords", kwords);
        Pageable pageable = PageRequest.of(p.orElse(0), 4);
        Page<Product> page = dao.findAllByNameLike("%"+kwords+"%", pageable);
        model.addAttribute("page", page);
        Page<Product> pagesale = dao.findAllBySaleASC(pageable);
        model.addAttribute("sale", pagesale);
        return "/home/index";
    }
}
