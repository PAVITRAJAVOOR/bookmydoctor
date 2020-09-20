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

import com.booking.beans.Doctor;
import com.booking.beans.Patient;
import com.booking.service.DoctorServiceImpl;
@Controller
@RequestMapping(value= "/log")
public class ListAllPatientController {
	@Autowired
			DoctorServiceImpl service;


			@RequestMapping(value="/patientlist",method=RequestMethod.GET)
			public ModelAndView getPatientlist(ModelAndView mv)
			{
				mv.setViewName("PatientList");
				return mv;
			}
			@RequestMapping(value="/patientlist", method=RequestMethod.POST)
			public String listAllPatient(ModelAndView mv, 
					Patient p,HttpServletResponse resp, HttpServletRequest req) throws SQLException,IOException {
				
				List<Patient> list = service.listAllPatient();
		              if(list!=null) {
					
					HttpSession session=req.getSession(false);
					session.setAttribute("List", list);
				
					return "ListPatient ";
		}
				
		else {
			return null;
		}
			}
		}


