package com.better.shuai.controller;

import com.better.shuai.bean.BlogShow;
import com.better.shuai.model.Blog;
import com.better.shuai.service.BlogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xiashuai on 2016/12/7.
 */
@Controller
@RequestMapping("api")
public class ApiController {

    @Resource
    BlogService blogService;

    @RequestMapping("blogs")
    @ResponseBody
    public List<BlogShow> blogs(){
        System.out.println("get blogs");
        List<BlogShow> blogs = blogService.getBlogs();
        return blogs;
    }

    @RequestMapping(value = "/{year}/{month}/{day}/{urlname}")
    @ResponseBody
    public Blog blog(@PathVariable("year") String year, @PathVariable("month") String month,
                       @PathVariable("day") String day, @PathVariable("urlname") String urlname){
        Blog blog = blogService.blog(year, month, day, urlname);
        return blog;
    }

}
