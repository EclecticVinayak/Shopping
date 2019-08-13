package com.vinayak.ShoppingBackEnd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vinayak.ShoppingBackEnd.Dao.CategoryDao;
import com.vinayak.ShoppingBackEnd.model.Category;
import com.vinayak.ShoppingBackEnd.model.Product;

@Controller
public class MyController 
{
	@Autowired
	private CategoryDao categoryDao;

	@RequestMapping(value= {"/","/home"}, method= RequestMethod.GET )
	public String homepage()
	{
		return "homepage";
	}
	
	@RequestMapping(value="/getCategoryForm", method= RequestMethod.GET )
	public String getCategoryForm(ModelMap map)
	{
		Category c=new Category();
		map.addAttribute("cObj",c);
		return "getAddCategoryForm";
	}
	
	
	@RequestMapping(value="/addCategory", method=RequestMethod.POST)
	public String fetchCategoryForm(@ModelAttribute Category c,ModelMap m)
	{
		boolean b=categoryDao.addCategory(c);
		if(b)
		{
			List<Category> cList=categoryDao.getAllCategories();
			for(Category ct: cList)
			{
				System.out.println(ct.getCategoryId()+" "+ct.getCategoryName());
			}
			m.addAttribute("cList",cList);
			System.out.println("after print");
			return "ViewCategories";
		}
		else
		{
			return "homepage";
		}
		
	}
	
	@RequestMapping(value="/ViewCategories", method=RequestMethod.GET)
	public String ViewCategory(ModelMap m)
	{
		List<Category> b=categoryDao.getAllCategories();
		if(!b.isEmpty())
		{
			List<Category> cList=categoryDao.getAllCategories();
			m.addAttribute("cList",cList);
			return "ViewCategories";
		}
		else
		{
			return "homepage";
		}
		
	}
	
	
	@RequestMapping(value="/updateCategory/{catId}",method=RequestMethod.GET)
	public String updateCategoryForm(@PathVariable int catId,ModelMap map)
	{
		Category cObj=categoryDao.getCategory(catId);
		map.addAttribute("cObj",cObj);
		map.addAttribute("buttonLabel","Update Category");
		map.addAttribute("formLabel","Update Category From");
		return "getAddCategoryForm";
		
	}
	
	
	
	
	
	
	
	
	
	
}
