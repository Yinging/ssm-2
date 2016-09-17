package com.better.shuai.controller;

import com.better.shuai.model.Blog;
import com.better.shuai.model.BlogKey;
import com.better.shuai.service.BlogService;
import com.better.shuai.utils.DateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Map;

/**
 * Created by xiashuai on 2016/9/13.
 */
@Controller
@RequestMapping("blog")
public class BlogController {

    @Resource
    BlogService blogService;

    @RequestMapping(value = "/{id}/{year}/{month}/{day}/{urlname}")
    public String blog(@PathVariable("year") String year, @PathVariable("month") String month,
                       @PathVariable("day") String day, @PathVariable("urlname") String urlname,
                       ModelMap modelMap, @PathVariable("id") int id){
        Blog blog = blogService.blog(id, year, month, day, urlname);
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
