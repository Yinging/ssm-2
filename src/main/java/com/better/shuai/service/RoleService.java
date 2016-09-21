package com.better.shuai.service;

import com.better.shuai.dao.RoleMapper;
import com.better.shuai.model.Role;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xiashuai on 2016/9/21.
 */
@Service
public class RoleService {
    @Resource
    RoleMapper roleMapper;

    public List<Role> selectRolesByUserId(Long userId) {
        return roleMapper.selectRolesByUserId(userId);
    }

}
