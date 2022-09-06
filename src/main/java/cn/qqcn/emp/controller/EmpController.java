package cn.qqcn.emp.controller;

import cn.qqcn.common.vo.Result;
import cn.qqcn.emp.entity.Emp;
import cn.qqcn.emp.service.EmpService;
import cn.qqcn.emp.vo.EmpQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/emp")
public class EmpController {
    
    @Autowired
    private EmpService empservice;
    
    @GetMapping("")
    public String toEmpListUI() {
        return "emp/empList";
    }
    
    @GetMapping("/list")
    @ResponseBody
    public Result<Object> getEmpList(EmpQuery param) {
        
        List<Emp> list = empservice.getEmpList(param);
        Long count = empservice.countEmpList(param);
        return Result.success(list,count);
    }
    
    @PostMapping("")
    @ResponseBody
    public Result<Object> addEmp(Emp emp) {
        empservice.addEmp(emp);
        return Result.success("新增员工成功！");
    }
    
    @GetMapping("/add/ui")
    public String toAddUI() {
        return "emp/empAdd";
    }
}
