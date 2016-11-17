package com.better.shuai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by xiashuai on 2016/11/16.
 */
@Controller
public class InfoController {

    @RequestMapping(value = "/aboutme")
    public String aboutme(){
        return "info";
    }

}
