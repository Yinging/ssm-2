package com.better.shuai.controller;

import com.better.shuai.model.Blog;
import com.better.shuai.service.BlogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * Created by xiashuai on 2016/9/13.
 */
@Controller
@RequestMapping("blog")
public class BlogController {

    @Resource
    BlogService blogService;

    @RequestMapping(value = "/{year}/{month}/{day}/{urlname}", method = RequestMethod.GET)
    public String blog(@PathVariable("year") String year, @PathVariable("month") String month,
                       @PathVariable("day") String day, @PathVariable("urlname") String urlname,
                       ModelMap modelMap){
        Blog blog = blogService.blog(year, month, day, urlname);
        modelMap.addAttribute("blog", blog);
        return "blog";
    }

}
