package com.caps.jsp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.booking.beans.Doctor;
import com.booking.service.DoctorServiceImpl;

@WebServlet("/listdoctor")
public class ListDoctor extends HttpServlet {
	
	
		
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			
			       DoctorServiceImpl impl = new DoctorServiceImpl();
			       List<Doctor>doc = impl.listAllDoctor();
			       System.out.println(doc);
			       
			       HttpSession session = req.getSession(false);
			       session.setAttribute("list",doc);
			
					RequestDispatcher dis = req.getRequestDispatcher("/WEB-INF/views/ListDoctor.jsp");
					dis.forward(req,resp);
			
		}


	}


