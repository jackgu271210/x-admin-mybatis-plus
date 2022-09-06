package cn.qqcn.emp.service.impl;

import cn.qqcn.emp.entity.Emp;
import cn.qqcn.emp.mapper.EmpMapper;
import cn.qqcn.emp.service.EmpService;
import cn.qqcn.emp.vo.EmpQuery;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class EmpServiceImpl implements EmpService {
    
    @Resource
    private EmpMapper empMapper;

    @Override
    public List<Emp> getEmpList(EmpQuery param) {
        return empMapper.getEmpList(param);
    }

    @Override
    public Long countEmpList(EmpQuery param) {
        return empMapper.countEmpList(param);
    }

    @Override
    public void addEmp(Emp emp) {
        empMapper.addEmp(emp);
    }
}
