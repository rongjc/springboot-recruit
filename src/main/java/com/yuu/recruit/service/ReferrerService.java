package com.yuu.recruit.service;

import com.yuu.recruit.domain.Employee;

import java.util.List;

/**
 * 任务业务逻辑接口
 */
public interface ReferrerService {

    void record(long taskId, long employeeId, long referrerId);
    public List<Employee> getAllReferrer(Long taskId, Long employeeId);
}






