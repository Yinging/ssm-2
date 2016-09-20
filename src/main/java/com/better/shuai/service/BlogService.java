package com.better.shuai.service;

import com.better.shuai.dao.BlogMapper;
import com.better.shuai.model.Blog;
import com.better.shuai.model.BlogExample;
import com.better.shuai.model.BlogKey;
import com.better.shuai.utils.DateUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by xiashuai on 2016/9/12.
 */
@Service
public class BlogService {
    @Resource
    BlogMapper blogMapper;

    @Transactional(readOnly = true)
    public List<Blog> getBlogs(){
        BlogExample blogExample = new BlogExample();
        blogExample.setOrderByClause("id desc");
        return blogMapper.selectByExample(blogExample);
    }

    @Transactional(readOnly = true)
    public Blog blog(int id, String year, String month, String day, String urlname){
        BlogKey blogKey = new BlogKey();
        blogKey.setId(id);
        blogKey.setUrlname(urlname);
        blogKey.setYear(year);
        blogKey.setMonth(month);
        blogKey.setDay(day);
        return blogMapper.selectByPrimaryKey(blogKey);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void insert(String urlname, String content, String title, String type){
        Blog blog = new Blog();

        String date = DateUtil.getDate();
        Map<String, String> map = DateUtil.getYearMonthDay();

        blog.setDay(map.get(DateUtil.DAY));
        blog.setMonth(map.get(DateUtil.MONTH));
        blog.setYear(map.get(DateUtil.YEAY));
        blog.setUrlname(urlname);

        blog.setContent(content);
        blog.setDate(date);
        blog.setTitle(title);
        blog.setType(type);

        blog.toString();

        blogMapper.insert(blog);
    }

}
