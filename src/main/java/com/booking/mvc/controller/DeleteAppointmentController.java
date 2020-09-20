package com.booking.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.booking.service.DoctorServiceImpl;
@Controller
@RequestMapping("/log")

public class DeleteAppointmentController {
	
	
		
		@Autowired
		DoctorServiceImpl services;


		@GetMapping("/deleteappointment")
		public ModelAndView addPage(ModelAndView mv) {
			mv.setViewName("DeleteAppointment");
			return mv;
		}

		@RequestMapping(value="/deleteappointment", method=RequestMethod.POST)
		public ModelAndView deleteAppointment( @RequestParam("aId")int aId, ModelAndView mv) {
			mv.setViewName("Success");
			boolean state = services.deleteAppointment();
			String msg = "Failed to delete appointment";
			if(state) {
				msg = "Appointment deleted";
			}
			mv.addObject("Success",msg);
			return mv;

		}
	}
