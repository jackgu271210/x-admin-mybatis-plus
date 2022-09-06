package cn.qqcn.emp.service;

import cn.qqcn.emp.entity.Emp;
import cn.qqcn.emp.vo.EmpQuery;

import java.util.List;

public interface EmpService {
    
    List<Emp> getEmpList(EmpQuery param);
    Long countEmpList(EmpQuery param);
    void addEmp(Emp emp);
}
