package com.caps.jsp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/deleteappointment")
public class DeleteAppointment {
	
	
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			RequestDispatcher dis = req.getRequestDispatcher("/WEB-INF/views/DeleteAppointment.jsp");
			dis.forward(req,resp);

		}
}
