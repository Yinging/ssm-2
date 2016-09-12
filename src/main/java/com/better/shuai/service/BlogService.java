package com.better.shuai.service;

import com.better.shuai.dao.BlogMapper;
import com.better.shuai.model.Blog;
import com.better.shuai.model.BlogExample;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

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
        return blogMapper.selectByExample(blogExample);
    }

}
