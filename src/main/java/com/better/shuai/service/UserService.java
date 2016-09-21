package com.better.shuai.service;

import com.better.shuai.dao.UserMapper;
import com.better.shuai.model.User;
import com.better.shuai.model.UserExample;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xiashuai on 2016/9/9.
 */
@Service
public class UserService {
    @Resource
    UserMapper userMapper;

    @Transactional(readOnly = true)
    public List<User> getUsers(){
        UserExample userExample = new UserExample();
        return userMapper.selectByExample(userExample);
    }

    @Transactional(readOnly = true)
    public User selectByUsername(String username) {
        UserExample example = new UserExample();
        example.createCriteria().andUsernameEqualTo(username);
        final List<User> list = userMapper.selectByExample(example);
        return list.get(0);
    }

    @Transactional(readOnly = true)
    public User authentication(User user) {
        User mUser = userMapper.authentication(user);
        return mUser;
    }

}
