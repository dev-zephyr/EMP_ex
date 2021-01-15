package com.zephyr.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.zephyr.mapper.empMapper;
import com.zephyr.vo.EmpVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class EmpServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private empMapper empMapper;
	
	@Test
	public void getListTest() {
		
//		List<EmpVO> list = empMapper.getList();
//		
//		for(EmpVO emp : list) {
//			log.info(emp);
//		}
		
	}

}
