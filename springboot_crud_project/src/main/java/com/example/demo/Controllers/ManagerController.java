package com.example.demo.Controllers;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.ManagerService.ManagerService;
import com.example.demo.Model.Manager;

@Controller
public class ManagerController
{
	@Autowired
	ManagerService ms;
	
	
	
//	@RequestMapping("/")
	@RequestMapping("/manager")
	public  String one()
	{
		return"Register";
	}
	
	@PostMapping("/savemanger")
	public String getdata(@ModelAttribute("m1") Manager m1,@RequestParam("file") MultipartFile filename) throws Exception
	{
		
		
		File f1=new File("C:\\Users\\Dell\\Fortune Java\\Core_java_Programs\\springboot_crud_project\\src\\main\\resources\\static\\images\\");
		
		String fname=filename.getOriginalFilename();
		
		
		filename.transferTo(new File(f1,fname));
		m1.setFilename(fname);
		
		ms.register(m1);
		
		return "redirect:/display";
	}
	
	
	@RequestMapping("/display")
	public String display(Model m)
	{
		List<Manager>l1=ms.getallinfo();
		m.addAttribute("temp", l1);
		
		return "display";
	}
	
	
	@RequestMapping("/deldata/{id}")
	public String delete(@PathVariable int id)
	{
		
		ms.deldata(id);
		return "redirect:/display";
		
		
	}
	
	@GetMapping("/editpage/{id}")
	public String edit(@PathVariable int id,Model m)
	{
		
		Manager mn=ms.getinfo(id);
		m.addAttribute("zz" ,mn);
		return "editpage";
	}
	
	
	@PostMapping("/updateinfo")
	public String updateinfo(@ModelAttribute("mg") Manager mg,@RequestParam("file") MultipartFile filename)throws Exception
	{

		File f1=new File("C:\\Users\\Dell\\Fortune Java\\Core_java_Programs\\springboot_crud_project\\src\\main\\resources\\static\\images\\");
		
		String fname=filename.getOriginalFilename();
		
		
		filename.transferTo(new File(f1,fname));
		
		Manager mp=new Manager();
		mp.setMid(mg.getMid());
		mp.setMname(mg.getMname());
		mp.setMemail(mg.getMemail());
		mp.setMpass(mg.getMpass());
		mp.setMcpass(mg.getMcpass());
		mp.setMgender(mg.getMgender());
		mp.setMstate(mg.getMgender());
		mp.setFilename(filename.getOriginalFilename());
		
		ms.register(mp);
		return "redirect:/display";
		
	}

    @GetMapping("/search")
    public String search(@RequestParam String filter, @RequestParam String query, RedirectAttributes redirectAttributes)
    {
        Manager m1 = null;

        if(filter.equals("mid"))
        {
        	m1=ms.findById(query);
        }
        else if (filter.equals("mname"))
        {
            m1 = ms.findByname(query); 
        } 
        else if (filter.equals("memail"))
        {
            m1 = ms.findByemail(query); 
        } 
        else if (filter.equals("mpass")) 
        {
            m1 = ms.findByPassword(query); 
        }

        
        if (m1 != null)
        {
            redirectAttributes.addFlashAttribute("sr", m1);
        } else
        {
            redirectAttributes.addFlashAttribute("error", "No manager found with the given criteria.");
        }

        return "redirect:/showdata";  
    }

    @GetMapping("/showdata")
    public String showdata() {
        return "showdata";  
    }
    
    
	}

	
	

