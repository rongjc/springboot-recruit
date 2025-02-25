package com.yuu.recruit.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Data
@Table(name = "bid")
public class Bid implements Serializable {
    /**
     * 投标ID
     */
    @Id
    @Column(name = "id")
    private Long id;

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
     * 竞标状态
     */
    @Column(name = "bid_status")
    private Byte bidStatus;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private Date createTime;

    private static final long serialVersionUID = 1L;
}
