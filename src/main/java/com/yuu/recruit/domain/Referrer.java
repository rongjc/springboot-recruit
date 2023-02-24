package com.yuu.recruit.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Data
@Table(name = "referrer")
public class Referrer implements Serializable {

    /**
     * 任务ID
     */
    @Column(name = "task_id")
    private Long taskId;

    /**
     * 职业者ID
     */
    @Column(name = "employee_id")
    private Long employeeId;

    /**
     * 投标价格
     */
    @Column(name = "referrer_id")
    private long referrerId;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private Date createTime;

    private static final long serialVersionUID = 1L;
}
