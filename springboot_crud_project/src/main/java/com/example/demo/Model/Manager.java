package com.example.demo.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Manager 
{
	
	
	@Id
	 @GeneratedValue(strategy=GenerationType.AUTO)
 private int mid;
 private String mname;
 private String memail;
 private String mpass;
 private String mcpass;
 private String mgender;
 private String mstate;
 private String filename;
public int getMid() {
	return mid;
}
public void setMid(int mid) {
	this.mid = mid;
}
public String getMname() {
	return mname;
}
public void setMname(String mname) {
	this.mname = mname;
}
public String getMemail() {
	return memail;
}
public void setMemail(String memail) {
	this.memail = memail;
}
public String getMpass() {
	return mpass;
}
public void setMpass(String mpass) {
	this.mpass = mpass;
}
public String getMcpass() {
	return mcpass;
}
public void setMcpass(String mcpass) {
	this.mcpass = mcpass;
}
public String getMgender() {
	return mgender;
}
public void setMgender(String mgender) {
	this.mgender = mgender;
}
public String getMstate() {
	return mstate;
}
public void setMstate(String mstate) {
	this.mstate = mstate;
}
public String getFilename() {
	return filename;
}
public void setFilename(String filename) {
	this.filename = filename;
}
@Override
public String toString() {
	return "Manager [mid=" + mid + ", mname=" + mname + ", memail=" + memail + ", mpass=" + mpass + ", mcpass=" + mcpass
			+ ", mgender=" + mgender + ", mstate=" + mstate + ", filename=" + filename + "]";
}
	
	
}
