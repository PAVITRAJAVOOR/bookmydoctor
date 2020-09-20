package com.booking.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.booking.beans.Appointment;
import com.booking.service.DoctorServiceImpl;

@Controller
@RequestMapping(value= "/log")

public class BookAppointmentController {
	
	
		@Autowired
		DoctorServiceImpl services;


		@GetMapping("/bookappointment")
		public ModelAndView bookAppointment(ModelAndView mv) {
			mv.setViewName("BookAppointment");
			return mv;
		}

		@RequestMapping(value="/bookappointment", method=RequestMethod.POST)
		public ModelAndView bookAppointment(Appointment appointment, ModelAndView mv) {
			mv.setViewName("Success");
			boolean state = services.bookAppointment(appointment);
			String msg = "Failed to book appointment";
			if(state) {
				msg = "successfully booked appointment";
			}
			mv.addObject("Success",msg);
			return mv;
		}
	}


