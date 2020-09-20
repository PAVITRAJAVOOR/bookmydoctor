package com.booking.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.booking.beans.Appointment;
import com.booking.beans.Doctor;
import com.booking.beans.Patient;
import com.booking.beans.Users;



@Repository
public class DAOJPAImpl implements DAO{

	@PersistenceUnit
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("myPersistenceUnit");

	
	@Override
	public Users login(int userId, String userName, String password, String role) {
		
		
		try {
			

			EntityManager em=emf.createEntityManager();
			em.getTransaction().begin();
			String query="Select us from Users us where us.userId =:userId AND us.userName =:userName AND "
					+ "us.password =:password AND us.role =:role";
			TypedQuery<Users> qu=em.createQuery(query,Users.class);
			qu.setParameter("userId", userId);
			qu.setParameter("userName", userName);
			qu.setParameter("password", password);
			qu.setParameter("role", role);
			Users user=qu.getSingleResult();
			
			

			if(user!=null)
			{
				if(em!=null) {
					em.getTransaction().commit();
					em.close();
				}
				return user;
			}
			else
				return null;
		}
		catch(Exception e)
		{
			return null
				;
		}

		}


	@Override
	public boolean bookAppointment(Appointment appointment) {
		boolean state = false;
		EntityManager em = null;
		try {
			em = emf.createEntityManager();
			em.getTransaction().begin();
			em.persist(appointment);
			em.getTransaction().commit();
			state = true;
		}catch(Exception e) {
			e.printStackTrace();
			state = false;
		}finally {
			if(em != null) {
				em.close();
			}
		}
		return state;
	}


	@Override
	public boolean addPatient(Patient patient) {
		
			boolean state = false;
			EntityManager em = null;
			try {
				em = emf.createEntityManager();
				em.getTransaction().begin();
				em.persist(patient);
				em.getTransaction().commit();
				state = true;
			}catch(Exception e) {
				e.printStackTrace();
				state = false;
			}finally {
				if(em != null) {
					em.close();
				}
			}
			return state;
		}

		

	@Override
	public boolean addDoctor(Doctor doctor) {
		boolean state = false;
		EntityManager em = null;
		try {
			em = emf.createEntityManager();
			em.getTransaction().begin();
			em.persist(doctor);
			em.getTransaction().commit();
			state = true;
		}catch(Exception e) {
			e.printStackTrace();
			state = false;
		}finally {
			if(em != null) {
				em.close();
			}
		}
		return state;
		
	}

	public Doctor doctorLogin(int did, String password) {
		
try {
			

			EntityManager em=emf.createEntityManager();
			em.getTransaction().begin();
			String query="Select ds from doctor ds where ds.did =:dId"
					+ "ds.password =:password ";
			TypedQuery<Doctor> qu=em.createQuery(query,Doctor.class);
			qu.setParameter("did", did);
			qu.setParameter("password", password);
			Doctor doctor=qu.getSingleResult();
			
			

			if(doctor!=null)
			{
				if(em!=null) {
					em.getTransaction().commit();
					em.close();
				}
				return doctor;
			}
			else
				return null;
		}
		catch(Exception e)
		{
			return null;
				
		}

	}

	
	@Override
	public Patient patientLogin(int pid, String password) {
try {
			

			EntityManager em=emf.createEntityManager();
			em.getTransaction().begin();
			String query="Select ps from patient ps where ps.pid =:pId"
					+ "ps.password =:password ";
			TypedQuery<Patient> qu=em.createQuery(query,Patient.class);
			qu.setParameter("pid", pid);
			qu.setParameter("password", password);
			Patient patient=qu.getSingleResult();
			
			

			if(patient!=null)
			{
				if(em!=null) {
					em.getTransaction().commit();
					em.close();
				}
				return patient;
			}
			else
				return null;
		}
		catch(Exception e)
		{
			return null;
				
		}
	}

	@Override
	public List<Doctor> listAllDoctor() {
		EntityManager doctor=emf.createEntityManager();
		doctor.getTransaction().begin();
		String query="select p from Doctor p";
		TypedQuery<Doctor> qu= doctor.createQuery(query,Doctor.class);
		List<Doctor> list=qu.getResultList();
		if(list!=null)
		{
			if( doctor!=null) {
				doctor.getTransaction().commit();
				doctor.close();
			}
			return list;
		}
		return null;
	}

	@Override
	public List<Patient> listAllPatient() {
		
	EntityManager patient=emf.createEntityManager();
	patient.getTransaction().begin();
	String query="select p from Participant p";
	TypedQuery<Patient> qu= patient.createQuery(query,Patient.class);
	List<Patient> list=qu.getResultList();
	if(list!=null)
	{
		if( patient!=null) {
			patient.getTransaction().commit();
			patient.close();
		}
		return list;
	}
	return null;
	}

	@Override
	public boolean deleteAppointment() {
		EntityManager manager=emf.createEntityManager();
		manager.getTransaction().begin();
		String query="delete from Appointment pa  ";
			

		Query qu=manager.createQuery(query);
		//qu.setParameter();
		int count=qu.executeUpdate();
		if(count>0)
		{
			if(manager!=null) {
				manager.getTransaction().commit();
				manager.close();
			}
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteDoctor(int did) {
		EntityManager manager=emf.createEntityManager();
		manager.getTransaction().begin();
		String query="delete from Participant pa   where  pa.did =:did ";
			

		Query qu=manager.createQuery(query);
		qu.setParameter("did", did);
		int count=qu.executeUpdate();
		if(count>0)
		{
			if(manager!=null) {
				manager.getTransaction().commit();
				manager.close();
			}
			return true;
		}
		return false;
	}

	@Override
	public List<Appointment> viewAllAppointment() {
		EntityManager appointment=emf.createEntityManager();
		appointment.getTransaction().begin();
		String query="select p from Appointment p";
		TypedQuery<Appointment> qu= appointment.createQuery(query,Appointment.class);
		List<Appointment> list=qu.getResultList();
		if(list!=null)
		{
			if( appointment!=null) {
				appointment.getTransaction().commit();
				appointment.close();
			}
			return list;
		}
		return null;
	}

	@Override
	public boolean updateAppointment(Appointment a) {
		EntityManager manager=emf.createEntityManager();
		manager.getTransaction().begin();
		String query="update Appointment sp set  sp.aid =:aId, sp.date =:Date, sp.did =:did,"
				+ "sp.pid =:pid";

		Query qu=manager.createQuery(query);
		qu.setParameter("aid", a.getAid());
		qu.setParameter("date", a.getDate());
		qu.setParameter("did", a.getDid());
		qu.setParameter("pid", a.getPid());
		
		int count=qu.executeUpdate();
		if(count>0)
		{
			if(manager!=null) {
				manager.getTransaction().commit();
				manager.close();
			}
			return true;
		}
		return false;
	}

}
