 package com.niit.controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.niit.Dao.ProductDao;
import com.niit.Dao.UserDao;
import com.niit.Dao.CategoryDao;

import com.niit.model.*;

@Controller
public class PageController 
{
//	@Autowired 
//	UserDao userDao;
//	
	@Autowired
	ProductDao productDao;
	@Autowired
	CategoryDao categoryDao; 
	
	@RequestMapping("/")
	public String getPage()
	{
		return"index";
	}

	@RequestMapping(value="/goToRegister", method=RequestMethod.GET)
	public ModelAndView saveRegister(@ModelAttribute("user")User user)
	{
		ModelAndView mav=new ModelAndView();
		user.setRole("ROLE_USER");
		mav.setViewName("index");
		return mav;
	}
	@RequestMapping(value="/productCustList")
	public ModelAndView getCustTable(@RequestParam("cid")int cid)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("prodList",productDao.getProdByCatId(cid));
		mv.setViewName("productCustList");
		return mv;
	}
	
	@ModelAttribute
	public void getData(Model m)
	{
		m.addAttribute("catList",categoryDao.retrieve());
	}
	
	
}





