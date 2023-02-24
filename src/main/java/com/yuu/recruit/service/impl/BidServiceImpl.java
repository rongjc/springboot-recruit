package com.yuu.recruit.service.impl;

import com.yuu.recruit.consts.BidStatus;
import com.yuu.recruit.consts.TaskStatus;
import com.yuu.recruit.domain.Bid;
import com.yuu.recruit.domain.Employee;
import com.yuu.recruit.domain.Task;
import com.yuu.recruit.mapper.BidMapper;
import com.yuu.recruit.mapper.EmployeeMapper;
import com.yuu.recruit.mapper.TaskMapper;
import com.yuu.recruit.service.BidService;
import com.yuu.recruit.vo.BidVo;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 雇员投标业务逻辑接口实现
 */
@Service
public class BidServiceImpl implements BidService {

    @Resource
    private BidMapper bidMapper;

    @Resource
    private EmployeeMapper employeeMapper;

    @Resource
    private TaskMapper taskMapper;

    @Resource
    private BidService bidService;

    @Override
    public void bid(Bid bid) {
        bidMapper.insert(bid);
    }

    @Override
    public boolean getBidByTaskIdAndEmployeeId(Long taskId, Long id) {
        Example example = new Example(Bid.class);
        example.createCriteria().andEqualTo("taskId", taskId)
                .andEqualTo("employeeId", id);
        Bid bid = bidMapper.selectOneByExample(example);

        // 如果 bid 不为 null 代表已经投递过该任务
        if (bid != null) {
            return true;
        }

        return false;
    }

    @Override
    public List<BidVo> getNoBitByEmployeeId(Long id) {
        Example example = new Example(Bid.class);
        example.createCriteria().andEqualTo("employeeId", id)
                                .andEqualTo("bidStatus", BidStatus.NO_BIT);
        List<Bid> bids = bidMapper.selectByExample(example);
        List<BidVo> bidVos = new ArrayList<>();
        for (Bid bid : bids) {
            BidVo bidVo = new BidVo();
            // 相同属性进行复制
            BeanUtils.copyProperties(bid, bidVo);
            // 根据投标雇员ID查询出雇员信息
            Employee currEmployee = employeeMapper.selectByPrimaryKey(bid.getEmployeeId());
            bidVo.setEmployee(currEmployee);
            // 根据任务 ID 查询任务信息
            Task task = taskMapper.selectByPrimaryKey(bid.getTaskId());
            bidVo.setTask(task);

            // 复制完值添加到集合中
            bidVos.add(bidVo);
        }
        return bidVos;
    }

    @Override
    public void deleteById(Long bid) {
        bidMapper.deleteByPrimaryKey(bid);
    }

    @Override
    public void acceptBid(Long taskId, Long employeeId) {
        // 修改竞标状态
        changeBidStatus(taskId, employeeId, BidStatus.BIT);
    }

    @Override
    public void changeBidStatus(Long taskId, Long employeeId, Byte bidStatus) {
        // 修改竞标状态
        Example example1 = new Example(Bid.class);
        example1.createCriteria().andEqualTo("taskId", taskId)
                .andEqualTo("employeeId", employeeId);
        Bid bid1 = bidMapper.selectOneByExample(example1);
        bid1.setBidStatus(bidStatus);
        bidMapper.updateByPrimaryKey(bid1);
    }
}





