package cn.qqcn.news.mapper;

import cn.qqcn.news.entity.News;
import cn.qqcn.news.vo.NewsQuery;

import java.util.List;

public interface NewsMapper {
    void addNews(News news);
    List<News> getNewsList(NewsQuery param);
    Long countNewsList(NewsQuery param);
}
