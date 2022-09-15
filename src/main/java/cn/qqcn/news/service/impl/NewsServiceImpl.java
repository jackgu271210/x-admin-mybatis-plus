package cn.qqcn.news.service.impl;

import cn.qqcn.news.entity.News;
import cn.qqcn.news.mapper.NewsMapper;
import cn.qqcn.news.service.NewsService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author yanzhao
 * @since 2022-09-15
 */
@Service
public class NewsServiceImpl extends ServiceImpl<NewsMapper, News> implements NewsService {

}
