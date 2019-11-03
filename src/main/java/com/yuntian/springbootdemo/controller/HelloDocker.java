package com.yuntian.springbootdemo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 */
@RestController
public class HelloDocker {

    @RequestMapping("/docker")
    public String dockerHello() {
        return "Hello Docker World 哈哈.";
    }

}
