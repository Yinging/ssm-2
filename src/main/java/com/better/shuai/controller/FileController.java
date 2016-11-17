package com.better.shuai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by xiashuai on 2016/9/14.
 */
@Controller
@RequestMapping("file")
public class FileController {

    @RequestMapping("/upload")
    public @ResponseBody Map upload(MultipartFile file, HttpServletRequest request) {
        String path = request.getSession().getServletContext().getRealPath("/img");//项目中的img文件夹下
        String fileName = file.getOriginalFilename();
        Map<String, Object> map = new HashMap<>();
        map.put("fileName","http://127.0.0.1:8080/ssm/rest/img/" + fileName);
        File targetFile = new File(path, fileName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }
        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

}
