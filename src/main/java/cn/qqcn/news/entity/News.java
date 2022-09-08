package cn.qqcn.news.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class News implements Serializable {
    
    private Integer id;
    private String title;
    private String content;
    private Integer counter;
    private String imgUrl;
    private Boolean elite;
}
