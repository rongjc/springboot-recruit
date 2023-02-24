package com.yuu.recruit.service.impl;

import cn.hutool.core.date.DateUnit;
import cn.hutool.core.date.DateUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuu.recruit.consts.TaskStatus;
import com.yuu.recruit.domain.*;
import com.yuu.recruit.mapper.*;
import com.yuu.recruit.result.PageResult;
import com.yuu.recruit.service.ReferrerService;
import com.yuu.recruit.utils.IDUtil;
import com.yuu.recruit.vo.BidVo;
import com.yuu.recruit.vo.TaskVo;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.util.*;

/**
 * 任务业务逻辑实现
 */
@Service
public class ReferrerServiceImpl implements ReferrerService {

    @Resource
    private ReferrerMapper referrerMapper;

    @Resource
    private EmployeeMapper employeeMapper;

    @Override
    public void record(long taskId, long employeeId, long referrerId) {
        // 构造查询条件
        Example example = new Example(Referrer.class);
        // 按用户名查询
        example.createCriteria().andEqualTo("taskId", taskId).andEqualTo("employeeId", employeeId).andEqualTo("referrerId", referrerId);
        Referrer referrerResult = referrerMapper.selectOneByExample(example);
        if(referrerResult == null) {
            Referrer referrer = new Referrer();
            referrer.setTaskId(taskId);
            referrer.setEmployeeId(employeeId);
            referrer.setReferrerId(referrerId);
            referrer.setCreateTime(new Date());
            referrerMapper.insert(referrer);
        }
    }


    public List<Employee> getAllReferrer(Long taskId, Long employeeId){
        Example example = new Example(Referrer.class);
        // 按用户名查询
        example.createCriteria().andEqualTo("taskId", taskId);
        List<Referrer> referrerResult = referrerMapper.selectByExample(example);
        List<Employee> referrerList = new LinkedList<Employee>();
        HashMap chain = new HashMap<Long, Long>();
        for(Referrer item:referrerResult){
            chain.put(item.getEmployeeId(),item.getReferrerId());
        }

        while(chain.containsKey(employeeId)){
            employeeId = (Long) chain.get(employeeId);
            Employee employee = employeeMapper.selectByPrimaryKey(employeeId);
            referrerList.add(employee);
        }
        return referrerList;
    }

}







