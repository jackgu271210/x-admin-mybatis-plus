package cn.qqcn.news.service;

import cn.qqcn.emp.vo.EmpQuery;
import cn.qqcn.news.entity.News;
import cn.qqcn.news.vo.NewsQuery;

import java.util.List;

public interface NewsService {
    
    void addNews(News news);
    Long countNewsList(NewsQuery param);
    List<News> getNewsList(NewsQuery param);
    News getNewsById(Integer id);
    void updateNews(News news);
}
