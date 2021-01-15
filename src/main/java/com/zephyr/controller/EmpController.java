package com.zephyr.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zephyr.service.EmpService;
import com.zephyr.vo.Criteria;
import com.zephyr.vo.EmpVO;
import com.zephyr.vo.PageDTO;


@Controller
@RequestMapping("/")
public class EmpController {
	
	@Autowired
	private EmpService empService;
	
	@GetMapping({"/", "/list"})
	public String home(Model model, Criteria cri) {
		
		// 검색 키워드 소문자 -> 대문자 변경
		if(cri.getKeyword() != null) {
			cri.setKeyword(cri.getKeyword().toUpperCase());
		}
		
		List<EmpVO> list = empService.getList(cri);
		
		int total = empService.getTotal(cri);
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		return "list";
	}
	
	@GetMapping(value = "/get/{empNo}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<EmpVO> getMember(@PathVariable("empNo") int empNo) {
		
		EmpVO result = empService.getMember(empNo);
		
		return new ResponseEntity<EmpVO>(result, HttpStatus.OK);
	}
	
	@PostMapping("/insert")
	public String insert(EmpVO vo, RedirectAttributes rttr) {
		
		vo.setEname(vo.getEname().toUpperCase());
		vo.setJob(vo.getJob().toUpperCase());
		
		int result = empService.insert(vo);
		
		if(result > 0) {
			rttr.addFlashAttribute("result", 1);
		} else {
			rttr.addFlashAttribute("result", 0);
		}
		
		return "redirect:/list";
	}
	
	@PostMapping("/update")
	public String update(EmpVO vo, RedirectAttributes rttr) {
		
		vo.setEname(vo.getEname().toUpperCase());
		vo.setJob(vo.getJob().toUpperCase());
		
		int result = empService.update(vo);
		
		if(result > 0) {
			rttr.addFlashAttribute("result", 1);
		} else {
			rttr.addFlashAttribute("result", 0);
		}
		
		return "redirect:/list";
	}
	
	@PostMapping("/delete")
	public String delete(EmpVO vo, RedirectAttributes rttr) {
		
		int result = empService.delete(vo.getEmpNo());
		
		if(result > 0) {
			rttr.addFlashAttribute("result", 1);
		} else {
			rttr.addFlashAttribute("result", 0);
		}
		
		return "redirect:/list";
	}
	
	@GetMapping("/list/sort")
	public String sortList(Criteria cri, String orderType, String order
					, Model model) {
		
		Map<String, Object> parameterMap = new HashMap<String, Object>();
		
		parameterMap.put("cri", cri);
		parameterMap.put("orderType", orderType);
		parameterMap.put("order", order);
		
		List<EmpVO> list = empService.sortList(parameterMap);
		
		int total = empService.getTotal(cri);
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		return "list";
	}
	
}
