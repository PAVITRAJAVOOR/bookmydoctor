package com.booking.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.booking.beans.Doctor;
import com.booking.beans.Patient;
import com.booking.service.DoctorServiceImpl;

@Controller
@RequestMapping(value= "/log")

public class AddDoctor {
	



		@Autowired
		DoctorServiceImpl services;


		@GetMapping(value= "/adddoctor")
		public ModelAndView addDoctor(ModelAndView mv) {
			mv.setViewName("AddDoctor");
			return mv;
		}

		@RequestMapping(value="/adddoctor", method=RequestMethod.POST)
		public ModelAndView addDoctor( Doctor doctor, ModelAndView mv) {
			mv.setViewName("Success");
			boolean state = services.addDoctor(doctor);
			String msg = "Failed to add student Data";
			if(state) {
				msg = "Student data added";
			}
			mv.addObject("Success",msg);
			return mv;
		}
	}

