package cn.qqcn.emp.controller;

import cn.qqcn.common.vo.Result;
import cn.qqcn.emp.entity.Dept;
import cn.qqcn.emp.entity.Emp;
import cn.qqcn.emp.service.EmpService;
import cn.qqcn.emp.vo.EmpQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
    public String toAddUI(Model model) {
        List<Dept> deptList = empservice.getAllDept(); 
        model.addAttribute("deptList",deptList);
        return "emp/empAdd";
    }
    
    @DeleteMapping("/{ids}")
    @ResponseBody
    public Result<Object> deleteEmpByIds(@PathVariable("ids") String ids) {
        empservice.deleteEmpByIds(ids);
        return Result.success("删除员工成功!");
    }
    
    @GetMapping("/{id}")
    public String getEmpById(@PathVariable("id") Integer id, Model model) {
        Emp emp = empservice.getEmpById(id);
        model.addAttribute("emp",emp);
        model.addAttribute("deptList",empservice.getAllDept());
        return "/emp/empEdit";
    }
    
    @PutMapping("")
    @ResponseBody
    public Result<Object> updateEmp(Emp emp) {
        empservice.updateEmp(emp);
        return Result.success("员工信息修改成功!");
    }
    
}
