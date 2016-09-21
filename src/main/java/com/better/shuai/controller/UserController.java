package com.better.shuai.controller;

import com.better.shuai.model.User;
import com.better.shuai.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by xiashuai on 2016/9/21.
 */
@Controller
@RequestMapping("user")
public class UserController {

    @Resource
    UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        HttpServletRequest request) {
        try {
            Subject subject = SecurityUtils.getSubject();
            // 已登陆
            if (subject.isAuthenticated()) {
                return "0";
            }
            // 身份验证
            subject.login(new UsernamePasswordToken(username, password));
            // 验证成功在Session中保存用户信息
            final User authUserInfo = userService.selectByUsername(username);
            request.getSession().setAttribute("userInfo", authUserInfo);
        } catch (AuthenticationException e) {
            return "1";
        }
        return "0";
    }

}
