package com.better.shuai.controller;

import com.better.shuai.model.Blog;
import com.better.shuai.service.BlogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * Created by xiashuai on 2016/9/13.
 */
@Controller
@RequestMapping("blog")
public class BlogController {

    @Resource
    BlogService blogService;

    @RequestMapping("/delete/{urlname}")
    public String delete(@PathVariable("urlname") String urlname){
        blogService.delete(urlname);
        return "redirect:/rest/index";
    }

    @RequestMapping(value = "/{year}/{month}/{day}/{urlname}")
    public String blog(@PathVariable("year") String year, @PathVariable("month") String month,
                       @PathVariable("day") String day, @PathVariable("urlname") String urlname,
                       ModelMap modelMap){
        Blog blog = blogService.blog(year, month, day, urlname);
        modelMap.addAttribute("blog", blog);
        return "blog";
    }

    @RequestMapping(value = "/edit")
    public String blogEdit(){
        return "edit";
    }

    @RequestMapping(value = "/insert")
    @ResponseBody
        public String blogInsert(@RequestParam(value = "urlname", required = false) String urlname,
                             @RequestParam(value = "title", required = false) String title,
                             @RequestParam(value = "content", required = false) String content){
        blogService.insert(urlname, content, title, "0");
        return "success";
    }



}
