package com.github.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * zhangbo
 */
@RestController
public class HomeController {

    @RequestMapping("/")
    public String home(){
        return "home";
    }

}
