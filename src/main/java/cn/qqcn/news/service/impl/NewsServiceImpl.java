package cn.qqcn.news.service.impl;

import cn.qqcn.news.entity.News;
import cn.qqcn.news.mapper.NewsMapper;
import cn.qqcn.news.service.NewsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class NewsServiceImpl implements NewsService {
    
    @Resource
    private NewsMapper newsMapper;
    
    @Override
    public void addNews(News news) {
        newsMapper.addNews(news);
    }
}
