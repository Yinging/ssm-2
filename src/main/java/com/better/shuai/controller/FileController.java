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
    @ResponseBody
    public Map upload(MultipartFile file, HttpServletRequest request) {

System.out.println("开始");
        //String path = request.getSession().getServletContext().getRealPath("/img");//项目中的img文件夹下
        // 定义上传路径

        String fileName = file.getOriginalFilename();
        String path = "E:/idealspace/ssm/src/main/webapp/img";
        Map<String, Object> map = new HashMap<>();
        String url = request.getScheme() + "://" + request.getServerName() + ":" +
                request.getServerPort() + request.getContextPath() + "/";
        map.put("fileName", url + "img/" + fileName);

System.out.println(fileName);
System.out.println(path);
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

System.out.println(fileName);
        return map;
    }

}
