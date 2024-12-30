package com.example.demo.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.ManagerService.ManagerService;
import com.example.demo.Model.Manager;
import com.example.demo.Repos.ManagerRepo;

@Service
public class ManagerDao implements ManagerService
{

	@Autowired
	ManagerRepo mr;
	@Override
	public void register(Manager m1) {
	mr.save(m1);
		
	}
	
	
	@Override
	public List<Manager> getallinfo()
	{
		
		return mr.findAll();
	}


	@Override
	public void deldata(int id) {
		mr.deleteById(id);
		
	}


	@Override
	public Manager getinfo(int id) {
		
		return mr.getById(id);
	}





	@Override
	public Manager search(int id) 
	{
	
		
		return mr.getById(id);
	}


	
	
	public Manager findByname(String name)
	{
	 Manager m =mr.findByMname(name) ;
	 System.out.println(m);
		return m ;
	}


	@Override
	public Manager findByemail(String email) 
	{
		 Manager m =mr.findByMemail(email) ;
		 System.out.println(m);
		return m;
	}


	@Override
	public Manager findByPassword(String password) 
	{
		Manager m=mr.findByMpass(password);
		return m;
	}


	@Override
	public Manager findById(String id)
	{ 
		int i = Integer.valueOf(id) ;
		Manager m=mr.findById(i).get();
		
		return m;
	}
	
	
	
	

}
