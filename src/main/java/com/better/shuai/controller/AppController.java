package com.better.shuai.controller;

import com.better.shuai.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xiashuai on 2016/9/9.
 */
@Controller
public class AppController {

    @Resource
    UserService userService;

    /*@RequestMapping("userList")
    public @ResponseBody List<User> getUser(){
        List<User> users = userService.getUsers();
        System.out.println("index here");
        System.out.println("users size: " + users.size());
        for (User user: users) {
            System.out.println("users name: " + user.getName());
        }
        return users;
    }*/

    @RequestMapping("user")
    public String showUser(){
        return "error";
    }

}
