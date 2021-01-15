package com.zephyr.mapper;

import java.util.List;
import java.util.Map;

import com.zephyr.vo.Criteria;
import com.zephyr.vo.EmpVO;

public interface empMapper {

	List<EmpVO> getList(Criteria cri);

	int getTotal(Criteria cri);

	EmpVO getMember(int empNo);

	int insert(EmpVO vo);

	int delete(int empNo);

	int update(EmpVO vo);

	List<EmpVO> sortList(Map<String, Object> parameterMap);

}
