package cn.qqcn.news.controller;

import cn.qqcn.common.vo.Result;
import cn.qqcn.emp.entity.Dept;
import cn.qqcn.news.entity.News;
import cn.qqcn.news.service.NewsService;
import cn.qqcn.news.vo.NewsQuery;
import jdk.nashorn.internal.ir.CallNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/news")
public class NewsController {
    
    @Autowired
    private NewsService newsService;
    
    @GetMapping("")
    public String toNewsListUI() {
        return "news/newsList";
    }

    @GetMapping("/list")
    @ResponseBody
    public Result<Object> getNewsList(NewsQuery param) {

        List<News> list = newsService.getNewsList(param);
        Long count = newsService.countNewsList(param);
        return Result.success(list,count);
    }
    
    @PostMapping("")
    @ResponseBody
    public Result<Object> addNews(News news) {
        newsService.addNews(news);
        return Result.success("新增新闻成功！");
    }

    @GetMapping("/add/ui")
    public String toAddUI() {
        return "news/newsAdd";
    }
    
    @GetMapping("/{id}")
    public String getNewsById(@PathVariable("id") Integer id, Model model) {
        News news = newsService.getNewsById(id);
        model.addAttribute("news",news);
        return "news/newsEdit";
    }
    
    @PutMapping("")
    @ResponseBody
    public Result<Object> updateNews(News news) {
        newsService.updateNews(news);
        return Result.success("新闻修改成功！");
    }
}
