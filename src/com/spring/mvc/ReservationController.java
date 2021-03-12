package com.spring.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReservationController {
	

	//Name of the Controller
	@RequestMapping("/ReservationController")
	public ModelAndView printMessage(
			//Name of the tag in the html assigning to the variables
			@RequestParam(value="name")String name,
			@RequestParam(value="lastname")String lastname,
			@RequestParam(value="phone" )String phone,
			@RequestParam(value="email" )String email
			) {
			//returning the view with the variables
		ModelAndView view = new ModelAndView("reservationview");
		view.addObject("Name",name);
		view.addObject("Lastname",lastname);
		view.addObject("Phone",phone);
		view.addObject("Email",email);
		
		return view;
		
		
		
		
	}

}
