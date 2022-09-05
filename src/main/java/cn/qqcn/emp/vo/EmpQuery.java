package cn.qqcn.emp.vo;

import cn.qqcn.common.vo.Page;
import lombok.Data;

import java.util.Date;

@Data
public class EmpQuery extends Page {
    
    private String name;
    private Date startDate;
    private Date endDate;
}
