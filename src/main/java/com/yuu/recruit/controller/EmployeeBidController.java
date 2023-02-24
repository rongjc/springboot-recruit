package com.yuu.recruit.controller;

import cn.hutool.core.date.DateField;
import cn.hutool.core.date.DateUtil;
import com.yuu.recruit.consts.BidStatus;
import com.yuu.recruit.domain.Bid;
import com.yuu.recruit.domain.Employee;
import com.yuu.recruit.service.BidService;
import com.yuu.recruit.service.TaskService;
import com.yuu.recruit.utils.IDUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * 雇员投标控制器
 *
 * @author by yuu
 * @Classname EmployeeBidController
 * @Date 2019/10/14 23:57
 * @see com.yuu.recruit.controller
 */
@Controller
public class EmployeeBidController {

    @Resource
    private BidService bidService;

    @Resource
    private TaskService taskService;

    /**
     * 雇员投标任务
     *
     * @param taskId 任务 ID
     * @param session
     * @return
     */
    @PostMapping("employee/bid")
    public String bid(Long taskId, HttpSession session, RedirectAttributes redirectAttributes) {
        // 获取 session 中的雇员信息
        Employee employee = (Employee) session.getAttribute("employee");

        // 判断雇员是否已经投标该任务
        boolean flag = bidService.getBidByTaskIdAndEmployeeId(taskId, employee.getId());
        if (flag) {
            // 该雇员已经投标过该任务，返回错误信息
            redirectAttributes.addFlashAttribute("msg", "You have already applied the job！");
            // 重定向到任务页面
            return "redirect:/task/page?taskId=" + taskId;
        }

        // 创建一个投标对象，设置值
        Bid bid = new Bid();
        bid.setId(IDUtil.getRandomId());
        bid.setTaskId(taskId);
        bid.setEmployeeId(employee.getId());
        bid.setBidStatus(BidStatus.NO_BIT);

        // 设置创建时间
        bid.setCreateTime(new Date());

        // 调用 bidService 添加到数据库
        bidService.bid(bid);

        // 下标成功，重定向到任务列表页
        return "redirect:/task/list";
    }
}
