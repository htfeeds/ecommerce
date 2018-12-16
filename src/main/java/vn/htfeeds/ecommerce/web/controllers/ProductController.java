package vn.htfeeds.ecommerce.web.controllers;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * @author HTFeeds
 *
 * Aug 29, 2017
 */
@Controller
@RequestMapping("/product")
public class ProductController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ProductController.class);

    @RequestMapping(value = { "/details" }, method = RequestMethod.GET)
    public String index(Locale locale, Model model) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        String curentUrl = request.getRequestURL() + "?" + request.getQueryString();
        LOGGER.info("Requesting to {}", curentUrl);
        LOGGER.info("The client locale is {}.", locale);

        model.addAttribute("locale", locale);

        return "product.details";
    }

}
