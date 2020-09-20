package com.booking.service;

import java.util.List;

import com.booking.beans.Appointment;
import com.booking.beans.Doctor;
import com.booking.beans.Patient;
import com.booking.beans.Users;

public interface DoctorService {
	
	public Users login(int userId,String userName, String password, String role);

    public boolean bookAppointment(Appointment appointment);

	public boolean addPatient(Patient patient);

	public boolean addDoctor(Doctor doctor);
	
	public Doctor doctorLogin(int did ,String password);

public Patient patientLogin(int id,String password);

	public List<Doctor> listAllDoctor();

	public List<Patient> listAllPatient();

	public boolean deleteAppointment();

	public boolean deleteDoctor(int did);

	public List<Appointment> viewAllAppointment();

	public boolean updateAppointment(Appointment a);
	

}
