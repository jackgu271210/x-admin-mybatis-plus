package cn.qqcn.news.service.impl;

import cn.qqcn.news.entity.News;
import cn.qqcn.news.mapper.NewsMapper;
import cn.qqcn.news.service.NewsService;
import cn.qqcn.news.vo.NewsQuery;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {
    
    @Resource
    private NewsMapper newsMapper;
    
    @Override
    public void addNews(News news) {
        newsMapper.addNews(news);
    }

    @Override
    public Long countNewsList(NewsQuery param) {
        return newsMapper.countNewsList(param);
    }

    @Override
    public List<News> getNewsList(NewsQuery param) {
        return newsMapper.getNewsList(param);
    }

    @Override
    public News getNewsById(Integer id) {
        return newsMapper.getNewsById(id);
    }

    @Override
    public void updateNews(News news) {
        newsMapper.updateNews(news);
    }

    @Override
    public void deleteNewsByIds(String ids) {
        newsMapper.deleteNewsByIds(ids);
    }
}
