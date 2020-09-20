package com.booking.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booking.beans.Appointment;
import com.booking.beans.Doctor;
import com.booking.beans.Patient;
import com.booking.beans.Users;
import com.booking.dao.DAO;
import com.booking.dao.DAOJPAImpl;



@Service
public class DoctorServiceImpl implements DoctorService{
	
	@Autowired
	DAO impl=new DAOJPAImpl();

	@Override
	public Users login(int userId, String userName, String password, String role) {
		
		Users user=impl.login(userId, userName, password, role);
		if(user!=null)
		{
			return user;
		}
		return null;
	}

	@Override
	public boolean bookAppointment(Appointment appointment) {
		boolean b=impl.bookAppointment(appointment);
		if(b==true)
		{
			return true;
		}
		return false;
	}

	@Override
	public boolean addPatient(Patient patient) {
		boolean b=impl.addPatient(patient);
		if(b==true)
		{
			return true;
		}
		
		return false;
	}

	@Override
	public boolean addDoctor(Doctor doctor) {
		boolean d=impl.addDoctor(doctor);
		if(d==true)
		{
			return true;
		}
		return false;
	}

	public Doctor doctorLogin(int did, String password) {
		Doctor doctor=impl.doctorLogin(did, password);
		if(doctor!=null)
		{
			return doctor;
		}
		return null;
	}

	

	@Override
	public Patient patientLogin(int id, String password) {
		Patient patient=impl.patientLogin(id, password);
		if(patient!=null)
		{
			return patient;
		}
		return null;
	}

	@Override
	public List<Doctor> listAllDoctor() {
		List<Doctor> list=impl.listAllDoctor();
		if(list!=null)
		{
			return list;
		}

		return null;
	}

	@Override
	public List<Patient> listAllPatient() {
		List<Patient> list=impl.listAllPatient();
		if(list!=null)
		{
			return list;
		}

		return null;
	}

	@Override
	public boolean deleteAppointment() {
		boolean b=impl.deleteAppointment();
		if(b==true)
		{
			return true;
		}
		return false;
		
	}

	@Override
	public boolean deleteDoctor(int did) {
		boolean b=impl.deleteDoctor(did);
		if(b==true)
		{
			return true;
		}
		return false;
	}

	@Override
	public List<Appointment> viewAllAppointment() {
		List<Appointment> list=impl.viewAllAppointment();
		if(list!=null)
		{
			return list;
		}

		return null;
	}

	public boolean updateAppointment(Appointment a) {
		boolean b=impl.updateAppointment(a);
		if(b==true)
		{
			return true;
		}
		return false;
	}
	

	

	

	

}
