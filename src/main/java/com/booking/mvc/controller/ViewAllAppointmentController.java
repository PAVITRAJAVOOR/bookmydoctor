package com.booking.mvc.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.booking.beans.Appointment;
import com.booking.service.DoctorServiceImpl;

@Controller
@RequestMapping("/log")

public class ViewAllAppointmentController {
	
	


		@Autowired
		DoctorServiceImpl service;


		@RequestMapping(value="/appointmentlist",method=RequestMethod.GET)
		public ModelAndView getAppointmentlist(ModelAndView mv)
		{
			mv.setViewName("AppointmentList");
			return mv;
		}
		@RequestMapping(value="/appointmentlist", method=RequestMethod.POST)
		public String listAllAppointments(ModelAndView mv, 
				Appointment po,HttpServletResponse resp,HttpServletRequest req)throws SQLException,IOException {
			
			List<Appointment> list = service.viewAllAppointment();
			if(list!=null)
			{
				HttpSession session=req.getSession(false);
				session.setAttribute("List", list);
				return "ListAppointment";
			}
			else {
				return null;
			}
			
			
			
		}
	}
