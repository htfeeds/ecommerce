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
@RequestMapping("/")
public class HomeController {
    private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = { "", "index", "home" }, method = RequestMethod.GET)
    public String index(Locale locale, Model model) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        String curentUrl = request.getRequestURL() + "?" + request.getQueryString();
        LOGGER.info("Requesting to {}", curentUrl);
        LOGGER.info("The client locale is {}.", locale);

        model.addAttribute("locale", locale);

        return "home.index";
    }

    @RequestMapping(value = { "hello" }, method = RequestMethod.GET)
    public String helloWorld(Locale locale, Model model) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        String curentUrl = request.getRequestURL() + "?" + request.getQueryString();
        LOGGER.info("Requesting to {}", curentUrl);
        LOGGER.info("The client locale is {}.", locale);

        model.addAttribute("locale", locale);

        return "hello.index";
    }
}
