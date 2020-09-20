package com.booking.beans;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table
public class Hospital {
	
	
		@Id
		@Column(name= "Admin_id")
		private int adminId;
		@Column(name= "Hospital_name")
		private String hospitalName;
		@Column(name= "Doctor_name")
		private String doctorName;
		@Column(name= "Doctor_id")
		private int doctorId;
		@Column(name= "Hospital_contact_no")
		private int hospitalContactNo;
		@Column(name= "password")
		private String password;
		public int getAdminId() {
			return adminId;
		}
		public void setAdminId(int adminId) {
			this.adminId = adminId;
		}
		public String getHospitalName() {
			return hospitalName;
		}
		public void setHospitalName(String hospitalName) {
			this.hospitalName = hospitalName;
		}
		public String getDoctorName() {
			return doctorName;
		}
		public void setDoctorName(String doctorName) {
			this.doctorName = doctorName;
		}
		public int getDoctorId() {
			return doctorId;
		}
		public void setDoctorId(int doctorId) {
			this.doctorId = doctorId;
		}
		public int getHospitalContactNo() {
			return hospitalContactNo;
		}
		public void setHospitalContactNo(int hospitalContactNo) {
			this.hospitalContactNo = hospitalContactNo;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		@Override
		public String toString() {
			return "Hospital [adminId=" + adminId + ", hospitalName=" + hospitalName + ", doctorName=" + doctorName
					+ ", doctorId=" + doctorId + ", hospitalContactNo=" + hospitalContactNo + "]";
		}

}

