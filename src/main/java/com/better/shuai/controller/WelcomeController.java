package com.better.shuai.controller;

import com.better.shuai.model.Blog;
import com.better.shuai.service.BlogService;
import com.better.shuai.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xiashuai on 2016/9/9.
 */
@Controller
public class WelcomeController {

    @Resource
    UserService userService;
    @Resource
    BlogService blogService;

   /* @RequestMapping("index")
    public String index(ModelMap modelMap){
        List<User> users = userService.getUsers();
        System.out.println("index here");
        System.out.println("users size: " + users.size());
        for (User user: users) {
            System.out.println("users name: " + user.getName());
        }
        modelMap.addAttribute("users", users);
        return "index";
    }*/

    @RequestMapping("index")
    public String blogs(ModelMap modelMap){
        List<Blog> blogs = blogService.getBlogs();
        modelMap.addAttribute("blogs", blogs);
        return "index";
    }

}
