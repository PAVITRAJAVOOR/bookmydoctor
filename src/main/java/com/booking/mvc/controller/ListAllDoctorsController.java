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
import com.booking.service.DoctorServiceImpl;


@Controller
@RequestMapping(value= "/log")
public class ListAllDoctorsController {



	@Autowired
	DoctorServiceImpl service;


	@RequestMapping(value="/listdoctor",method=RequestMethod.GET)
	public ModelAndView getDoctorlist(ModelAndView mv)
	{
		DoctorServiceImpl impl = new DoctorServiceImpl();
		List<Doctor>docs = impl.listAllDoctor();
		System.out.println(docs);
		mv.addObject("list", docs);
		mv.setViewName("ListDoctor");
		return mv;
	}
	@RequestMapping(value="/listdoctor", method=RequestMethod.POST)
	public String listAllDoctor(ModelAndView mv, 
			Doctor p,HttpServletResponse resp, HttpServletRequest req) throws SQLException,IOException {

		List<Doctor> list = service.listAllDoctor();
		if(list!=null) {

			HttpSession session=req.getSession(false);
			session.setAttribute("List", list);

			return "ListDoctor ";
		}

		else {
			return null;
		}
	}
}



