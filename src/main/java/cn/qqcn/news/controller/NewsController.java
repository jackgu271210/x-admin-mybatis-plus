package cn.qqcn.news.controller;

import cn.qqcn.common.vo.Result;
import cn.qqcn.news.entity.News;
import cn.qqcn.news.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/news")
public class NewsController {
    
    @Autowired
    private NewsService newsService;
    
    @GetMapping("")
    public String toNewsListUI() {
        return "news/newsList";
    }
    
    @PostMapping("")
    @ResponseBody
    public Result<Object> addNews(News news) {
        newsService.addNews(news);
        return Result.success("新增新闻成功！");
    }
}
