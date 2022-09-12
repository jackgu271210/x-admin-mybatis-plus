package cn.qqcn.news.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@Data
public class News implements Serializable {
    
    private Integer id;
    private String title;
    private String content;
    private Integer counter;
    private String imgUrl;
    private Boolean elite;
    private Date createTime;
    private Date updateTime;
}