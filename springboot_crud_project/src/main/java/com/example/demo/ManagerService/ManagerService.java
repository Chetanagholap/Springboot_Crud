package com.example.demo.ManagerService;

import java.util.List;

import com.example.demo.Model.Manager;



public interface ManagerService 
{
	
	public void register(Manager m1);
	
	public List<Manager> getallinfo();
	
	public void deldata(int id);
	
	public Manager getinfo(int id);
	
	


	public Manager search(int id);
	
	public Manager findByname(String name) ;
	public Manager findByemail(String email);
	public Manager findByPassword(String password);
	public Manager findById(String id);



	


	
	

}
