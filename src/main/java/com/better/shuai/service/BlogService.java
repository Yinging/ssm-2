package com.better.shuai.service;

import com.better.shuai.bean.BlogShow;
import com.better.shuai.dao.BlogMapper;
import com.better.shuai.model.Blog;
import com.better.shuai.model.BlogExample;
import com.better.shuai.model.BlogKey;
import com.better.shuai.utils.DateUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by xiashuai on 2016/9/12.
 */
@Service
public class BlogService {
    @Resource
    BlogMapper blogMapper;

    public void delete(String urlName){
        BlogExample example = new BlogExample();
        BlogExample.Criteria criteria = example.createCriteria();
        criteria.andUrlnameEqualTo(urlName);

        Blog blog = new Blog();
        blog.setStatus("1");

        blogMapper.updateByExampleSelective(blog, example);
    }

    @Transactional(readOnly = true)
    public List<BlogShow> getBlogs(){
        BlogExample blogExample = new BlogExample();
        blogExample.setOrderByClause("date desc");
        List<Blog> blogs = blogMapper.selectByExample(blogExample);
        return formatDate(blogs);
    }

    private List<BlogShow> formatDate(List<Blog> blogs){
        List<BlogShow> blogShows = new ArrayList<>();
        BlogShow blogShow;
        for (Blog blog : blogs){
            blogShow = new BlogShow();
            blogShow.setStatus(blog.getStatus());
            blogShow.setContent(blog.getContent());
            blogShow.setDate(DateUtil.formatMillLong(blog.getDate()));
            blogShow.setDay(blog.getDay());
            blogShow.setYear(blog.getYear());
            blogShow.setMonth(blog.getMonth());
            blogShow.setTitle(blog.getTitle());
            blogShow.setType(blog.getType());
            blogShow.setUrlname(blog.getUrlname());
            blogShows.add(blogShow);
        }
        return blogShows;
    }

    @Transactional(readOnly = true)
    public Blog blog(String year, String month, String day, String urlname){
        BlogKey blogKey = new BlogKey();
        blogKey.setUrlname(urlname);
        blogKey.setYear(year);
        blogKey.setMonth(month);
        blogKey.setDay(day);
        return blogMapper.selectByPrimaryKey(blogKey);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void insert(String urlname, String content, String title, String type){
        Blog blog = new Blog();

        Date date = DateUtil.getDate();
        Map<String, String> map = DateUtil.getYearMonthDay();

        blog.setDay(map.get(DateUtil.DAY));
        blog.setMonth(map.get(DateUtil.MONTH));
        blog.setYear(map.get(DateUtil.YEAY));
        blog.setUrlname(urlname);

        blog.setContent(content);
        blog.setDate(date);
        blog.setTitle(title);
        blog.setType(type);
        blog.setStatus("0");

        int result = blogMapper.insert(blog);
        System.out.println("result: " + result);
    }

}
