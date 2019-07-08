/**
 * 
 */
package com.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author kartik.raina
 *
 */
@Controller
public class MainController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcomeMessage() {
		return "welcome";
	}
	
	@RequestMapping("/addproduct")
	public String addNewProduct() {
		return "addproduct";
	}
}
