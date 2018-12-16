package vn.htfeeds.ecommerce.admin.controllers;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import vn.htfeeds.ecommerce.DTOs.ProductDTO;
import vn.htfeeds.ecommerce.services.ProductService;

/**
 * @author HTFeeds
 *
 * Aug 29, 2017
 */
@Controller
@RequestMapping("/admin")
public class AdminHomeController {
    private static final Logger LOGGER = LoggerFactory.getLogger(AdminHomeController.class);
    private final ProductService productService;

    @Autowired
    AdminHomeController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping(value = { "", "index", "home" }, method = RequestMethod.GET)
    public String index(Model model) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        String curentUrl = request.getRequestURL() + "?" + request.getQueryString();
        LOGGER.info("Requesting to {}", curentUrl);

        List<ProductDTO> allProducts = productService.findAll();
        model.addAttribute("allProducts", allProducts);

        return "admin.index";
    }

}
