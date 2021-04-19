package com.mqz.start.jenkins.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author mqz
 * @date 2021年3月25日
 * @about https://github.com/DemoMeng
 * @description web入口
 */
@RestController
@RequestMapping(value = "/web")
public class WebController {

    @GetMapping(value = "/index")
    public String index(){
        return "Welcome the web power by mqz";
    }


}
