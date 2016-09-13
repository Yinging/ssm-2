package com.better.shuai.controller;

import com.better.shuai.model.Blog;
import com.better.shuai.service.BlogService;
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
    BlogService blogService;

    @RequestMapping("index")
    public String blogs(ModelMap modelMap){
        List<Blog> blogs = blogService.getBlogs();
        modelMap.addAttribute("blogs", blogs);
        return "index";
    }

}
