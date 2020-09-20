package com.booking.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.booking.beans.Doctor;
import com.booking.service.DoctorServiceImpl;



@Controller
@RequestMapping(value= "/log")
public class DeleteDoctorController {
	
	@Autowired
	DoctorServiceImpl services;


	@GetMapping("/deletedoctor")
	public ModelAndView addPage(ModelAndView mv) {
		mv.setViewName("DeleteDoctor");
		return mv;
	}

	@RequestMapping(value="/deletedoctor", method=RequestMethod.POST)
	public ModelAndView deleteDoctor( @RequestParam("did")int did, ModelAndView mv) {
		mv.setViewName("Success");
		

		Doctor p=new Doctor();
		p.setDid(did);
		
		boolean state = services.deleteDoctor(did);
		String msg = "Failed to deleted doctor Data";
		if(state) {
			msg = "Succesfully deleted doctor data";
		}
		mv.addObject("Success",msg);
		return mv;
	}
}


