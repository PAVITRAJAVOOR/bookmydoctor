package com.booking.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.booking.beans.Patient;
import com.booking.service.DoctorServiceImpl;


@Controller
@RequestMapping(value= "/log")
public class AddPatient {



	@Autowired
	DoctorServiceImpl services;


	@GetMapping(value= "/addpatient")
	public ModelAndView addPatient(ModelAndView mv) {
		mv.setViewName("AddPatient");
		return mv;
	}

	@RequestMapping(value="/addpatient", method=RequestMethod.POST)
	public ModelAndView addPatient( Patient patient, ModelAndView mv) {
		mv.setViewName("Success");
		boolean state = services.addPatient(patient);
		String msg = "Failed to add student Data";
		if(state) {
			msg = "Student data added";
		}
		mv.addObject("Success",msg);
		return mv;
	}
}



