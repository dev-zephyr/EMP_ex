package com.zephyr.vo;

import java.sql.Date;
import java.time.LocalDateTime;

import lombok.Data;

@Data
public class EmpVO {

	private int empNo;
	private String ename;
	private String job;
	private int mgr;
	private Date hireDate;
	private int sal;
	private int comm;
	private int deptNo;
	
}
