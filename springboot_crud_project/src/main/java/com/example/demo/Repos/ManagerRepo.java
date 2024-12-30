package com.example.demo.Repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Model.Manager;

public interface ManagerRepo extends JpaRepository<Manager,Integer>
{
	
	public Manager findByMname(String mname) ;

	public Manager findByMemail(String memail);

	public Manager findByMpass(String mpass);
	
	public Manager findByMid(String id);
	

}
 