package com.spring.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class ReservationController {
	
	ReservationBean reservationBean = new ReservationBean();
	
	
	
	//Name of the Controller
	@PostMapping("/ReservationController")
	public ModelAndView printMessage(
			//Name of the tag in the html assigning to the variables
			@RequestParam(value="name")String name,
			@RequestParam(value="lastname")String lastname,
			@RequestParam(value="areacode")String areacode,
			@RequestParam(value="phone" )String phone,
			@RequestParam(value="email" )String email,
			@RequestParam(value="address1" )String address1,
			@RequestParam(value="address2" )String address2,
			@RequestParam(value="city" )String city,
			@RequestParam(value="province" )String province,
			@RequestParam(value="zipcode" )String zipcode,
			@RequestParam(value="country" )String country,
			@RequestParam(value="arrivaldate" )String arrivaldate,
			@RequestParam(value="departuredate" )String departuredate,
			@RequestParam(value="price" )String price,
			@RequestParam(value="night" )String night,
			@RequestParam(value="adult" )String adult,
			@RequestParam(value="kid" )String kid,
			@RequestParam(value="payment" )String payment
			) {
			//returning the view with the variables
		ModelAndView view = new ModelAndView("show_reservation");
		view.addObject("Name",name);
		view.addObject("Lastname",lastname);
		view.addObject("Areacode",areacode);
		view.addObject("Phone",phone);
		view.addObject("Email",email);
		view.addObject("Address1",address1);
		view.addObject("Address2",address2);
		view.addObject("City",city);
		view.addObject("Province",province);
		view.addObject("Zipcode",zipcode);
		view.addObject("Country",country);
		view.addObject("Arrivaldate",arrivaldate);
		view.addObject("Departuredate",departuredate);
		view.addObject("Price",price);
		view.addObject("Night",night);
		view.addObject("Adult",adult);
		view.addObject("Kid",kid);
		view.addObject("Payment",payment);
		view.addObject("Total",calculation(night,price));
		
		
		return view;
	}
	
	public int calculation(String numnight,String price) {
		int total =0;
		int numnight2 =Integer.parseInt(numnight); 
		switch(price) {
		  case "Mountain View":
		    total = 100 * numnight2;
		    break;
		  case "Ocean View":
			  total = 120 * numnight2;
			    break;
		  case "City View":
			  total = 140 * numnight2;
		    break;
		  default:
		    // code block
		}
		
		return total;
	}

}
