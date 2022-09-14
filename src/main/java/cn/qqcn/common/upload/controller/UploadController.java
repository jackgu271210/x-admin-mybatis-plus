package cn.qqcn.common.upload.controller;

import cn.qqcn.common.upload.entity.DataJson;
import cn.qqcn.common.upload.utils.UploadUtils;
import cn.qqcn.common.vo.Result;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.xml.crypto.Data;
import java.util.HashMap;

@Controller
@RequestMapping("upload")
public class UploadController {
    
    @RequestMapping("")
    @ResponseBody
    public DataJson uploadImage(@RequestParam(value="file") MultipartFile multipartFile) {
        
        //调用我们写的上传文件的工具类
        String imagePath = UploadUtils.upload(multipartFile);
        DataJson dataJson = new DataJson();
        System.out.println(imagePath);
        System.out.println("--------------------------");
        if(imagePath != null) {
            dataJson.setCode(0);
            dataJson.setMsg("上传成功");
            HashMap<String, String> map = new HashMap<>();
            map.put("src",imagePath);
            dataJson.setData(map);
        }else{
            dataJson.setCode(0);
            dataJson.setMsg("对不起，上传失败");
        }
        
        return dataJson;
    }
}
