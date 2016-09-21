package com.better.shuai.service;

import com.better.shuai.dao.PermissionMapper;
import com.better.shuai.model.Permission;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xiashuai on 2016/9/21.
 */
@Service
public class PermissionService {
    @Resource
    PermissionMapper permissionMapper;

    public List<Permission> selectPermissionsByRoleId(Long roleId) {
        return permissionMapper.selectPermissionsByRoleId(roleId);
    }

}
