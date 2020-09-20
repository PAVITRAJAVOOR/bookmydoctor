package com.booking.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.booking.service.DoctorServiceImpl;
import com.booking.beans.Users;


@Controller
@RequestMapping(value= "/log")
public class LoginController {


	@Autowired
	DoctorServiceImpl service;

	@RequestMapping(value="/loginpage",method=RequestMethod.GET)
	public String getLoginPage()
	{
		return "Login";
	}

	@RequestMapping(value= "/loginpage",method=RequestMethod.POST)
	public ModelAndView login(@RequestParam("userId")int userId,@RequestParam("userName")String userName,
			@RequestParam("password")String password,
			@RequestParam("role")String role,HttpServletRequest req,HttpServletResponse resp,ModelAndView mv,Model model)

	{
		Users user=service.login(userId, userName, password, role);

		if(user==null)
		{
			mv.setViewName("Login");
		}
		if(user!=null)
		{
			HttpSession session = req.getSession();
			if (user.getRole().equals("admin"))
			{
				mv.addObject("admin", user);
				mv.setViewName("/Homepage");
			}
			else if (user.getRole().equals("doctor"))
			{
				mv.addObject("doctor",user);
				mv.setViewName("HomeMAC");
			}
			else if (user.getRole().equals("patient"))
			{
				mv.addObject("patient",user);
				mv.setViewName("Homepatient");
			}

		}

		return mv;
	}
}



