package com.cg.example.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.cg.example.beans.CustomerBean;
import com.cg.example.beans.DiscountBean;

@Controller
public class JspController {

	/*@RequestMapping(value="/welcome")
	public String showWelcomePage(String id, ModelMap model){
		
		RestTemplate restTemplate = new RestTemplate();
		DiscountBean discount = restTemplate.getForObject("http://localhost:9090/getbyDiscountId?discountId="+id, DiscountBean.class);
		System.out.println(discount);
		model.put("discountId", discount);
		return "welcome";
	}*/
	
	@RequestMapping(value="/FindDiscountById")
	public String wel() {
		return "FindDiscountById";
	}
	@RequestMapping(value="/DandP")
	public String dis() {
		return "DandP";
	}
	
	@RequestMapping(value="/ProductManagement")
	public String productManagement() {
		return "ProductManagement";
	}
	
	@RequestMapping(value="/RemoveProduct")
	public String removeProduct() {
		return "RemoveProduct";
	}
	
	@RequestMapping(value="/FindByCategory")
	public String findByCategory() {
		return "FindProductByCategory";
	}
	
	@RequestMapping(value="/ProductPage")
	public String descriptionOfProductPage() {
		return "ProductPage";
	}
	
	@RequestMapping("/AddProduct")
	String addProductByMerchant() {
		return "AddProduct";
		
	}
	
	@RequestMapping("/UpdateProduct")
	String updateProductByMerchant() {
		return "UpdateProduct";
		
	}
	
	@RequestMapping("/FindByProductId")
	String findByProductId() {
		return "FindProductById";
		
	}
	
	@RequestMapping("/Discount")
	String addDiscountByMerchant() {
		return "AddDiscount";
		
	}
	
	@RequestMapping("/Promo")
	String addPromoByMerchant() {
		return "AddPromo";
		
	}
	

	@RequestMapping("/FindPromoById")
	String findPromoById() {
		return "FindPromoById";
		
	}
	
	@RequestMapping("/ViewAllCategories")
	String viewAllCategories() {
		return "ViewAllCategories";
		
	}
	
	/*@RequestMapping(value = "/addfeebackPage")
	public String feedback() {
		RestTemplate restTemplate = new RestTemplate();
	List<FeedbackProductBean> feedback = restTemplate.getForObject("http://localhost:9010/addingfeedack", List.class);
	model.put("feedback", feedback);
	return "addfeedback";
	}*/
	
}