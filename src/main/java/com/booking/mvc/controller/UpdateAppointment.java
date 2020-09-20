package com.booking.mvc.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.booking.beans.Appointment;
import com.booking.service.DoctorServiceImpl;


@Controller
@RequestMapping(value= "/log")
public class UpdateAppointment {


	@Autowired
	DoctorServiceImpl services;

	@RequestMapping(value= "/updateappointment",method=RequestMethod.GET)
	public ModelAndView getUpdateAppointment(ModelAndView mv)
	{
		mv.setViewName("UpdateAppointment");
		return mv;
	}

	@RequestMapping(value="/updateappointment", method=RequestMethod.POST)
	public ModelAndView getUpdateAppointment (@RequestParam("aid")int  aid, @RequestParam("date") Date date,
			@RequestParam("did") int did, @RequestParam("pid") int pid,
			 ModelAndView mv) {

		mv.setViewName("Success");

		Appointment a=new Appointment();
		a.setAid(aid);
		a.setDate(date);
		a.setDid(did);
		a.setPid(pid);
		

		boolean state = services.updateAppointment(a);
		String msg = "Failed to update ";
		if(state) {
			msg = "updated successfully";
		}
		mv.addObject("Success",msg);
		return mv;

	}
}



