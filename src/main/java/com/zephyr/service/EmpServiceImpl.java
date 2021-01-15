package com.zephyr.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zephyr.mapper.empMapper;
import com.zephyr.vo.Criteria;
import com.zephyr.vo.EmpVO;

@Service
public class EmpServiceImpl implements EmpService {

	@Autowired
	private empMapper empMapper;
	
	@Override
	public List<EmpVO> getList(Criteria cri) {
		return empMapper.getList(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		return empMapper.getTotal(cri);
	}

	@Override
	public EmpVO getMember(int empNo) {
		return empMapper.getMember(empNo);
	}

	@Override
	public int insert(EmpVO vo) {
		return empMapper.insert(vo);
	}

	@Override
	public int delete(int empNo) {
		return empMapper.delete(empNo);
	}

	@Override
	public int update(EmpVO vo) {
		return empMapper.update(vo);
	}

	@Override
	public List<EmpVO> sortList(Map<String, Object> parameterMap) {
		return empMapper.sortList(parameterMap);
	}

}
