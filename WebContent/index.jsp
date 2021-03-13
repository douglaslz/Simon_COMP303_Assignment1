<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body onload="myFunction()">
  
  <script>
function myFunction() {
	
	var dynamicSelect = document.getElementById("night");
	var index = 1;
	
	for(x = 1;x<10;x++)
	{
	   var opt = document.createElement("option");
	   opt.value= index;
	   opt.innerHTML = x; // whatever property it has

	   // then append it to the select element
	   dynamicSelect.appendChild(opt);
	   index++;
	}
	
	dynamicSelect = document.getElementById("adult");
	index = 1;
	
	for(x = 1;x<10;x++)
	{
	   var opt = document.createElement("option");
	   opt.value= index;
	   opt.innerHTML = x; // whatever property it has

	   // then append it to the select element
	   dynamicSelect.appendChild(opt);
	   index++;
	}
	
	dynamicSelect = document.getElementById("kid");
	index = 1;
	
	for(x = 0;x<10;x++)
	{
	   var opt = document.createElement("option");
	   opt.value= index;
	   opt.innerHTML = x; // whatever property it has

	   // then append it to the select element
	   dynamicSelect.appendChild(opt);
	   index++;
	}


}
</script>
  
  <form action="ReservationController" method="post">

    <div class="inner-layer">
          <div class="container">
            <div class="row">
              <div class="col-sm-7">
                <div class="content">                
                  <h1>Hotel Reservation Form</h1>             
                </div>

                <div class="row form-row">
                  <h4>Full Name*</h4>          

                  <div class="col-sm-6">                                   
                    <input type="text" placeholder="First Name" name="name" class="form-control">
                  </div>

                  <div class="col-sm-6">
                    <input type="text" placeholder="Last Name" name="lastname" class="form-control">
                  </div>
                </div>

                <div class="row form-row">
                  <h4>Phone Number*</h4>          

                  <div class="col-sm-6">                                   
                    <input type="text" placeholder="Area Code" name="areacode" class="form-control">
                  </div>

                  <div class="col-sm-6">
                    <input type="text" placeholder="Phone Number" name="phone" class="form-control">
                  </div>
                </div>

                <div class="row form-row">
                  <h4>Email*</h4>          

                  <div class="col-sm-6">                                   
                    <input type="text" placeholder="Email Address" name="email" class="form-control">
                  </div>                
                </div>

                <div class="row form-row">
                  <h4>Address*</h4>              

                  <div class="col-sm-6">
                    <input type="text" placeholder="Street Address" name="address1" class="form-control">
                  </div>                              
                </div>

                <div class="row form-row">
                  <br>  
                  <div class="col-sm-6">                      
                    <input type="text" placeholder="Street Address Line 2" name="address2" class="form-control">
                  </div>                
                </div>

                <div class="row form-row">
                  <br>
                  <div class="col-sm-6">                      
                    <input type="text" placeholder="City" name="city" class="form-control">
                  </div>
                  <div class="col-sm-6">
                    <input type="text" placeholder="State/Province" name="province" class="form-control">
                  </div>
                </div>

                <div class="row form-row">
                  <br>
                  <div class="col-sm-6">                      
                    <input type="text" placeholder="Postal/Zip Code" name="zipcode" class="form-control">
                  </div>
                  <div class="col-sm-6">
                    <input type="text" placeholder="Country" name="country" class="form-control">
                  </div>
                </div>

                <div class="row form-row">
                  <br>
                  <div class="col-sm-6">                      
                    <h4>Accommodations</h4>
                  </div>                
                </div>

                <div class="row form-row">                    
                  <div class="col-sm-6">                      
                    <h4>Arrival-Date</h4> 
                  </div>
                  <div class="col-sm-6">
                    <h4>Departure-Date</h4> 
                  </div>
                  <div class="col-sm-6">
                    <input type="date"  name="arrivaldate" class="form-control">
                  </div>
                  <div class="col-sm-6">
                    <input type="date"  name="departuredate" class="form-control">
                  </div>
                </div>
                <br>
                <br>

                <div class="row form-row">
                                    
                  <div class="col ml-auto" >                      
                    <input type="radio" name="price" value="Mountain View">
                    <label>$100/Night - Mountain View</label><br>
                  </div><br>
                  <div class="col ml-auto">
                    <input type="radio" name="price" value="Ocean View">
                    <label>$120/Night - Ocean View</label><br>  
                  </div><br>
                  <div class="col ml-auto">
                    <input type="radio" name="price" value="City View" >
                    <label>$140/Night - City View</label><br><br>
                    
                    <label>Number of Nights</label>
                    <select id="night" name="night">
					</select>  <br><br>
					
			        <label>Number of Adults</label>
                    <select id="adult" name="adult">
					</select>  <br><br>
					
		            <label>Number of Kids</label>
                    <select id="kid" name="kid">
					</select>  
                  </div>
                  
                </div>

              </div>  
            </div> 
          </div>
    </div>
    
    
    		<h3>Payment method</h3>
    <p>Pay by</p>
     <input type="radio" name="payment" value ="Credit Card" checked>Credit Card<br>
  	 <input type="radio" name="payment" value ="Paypal">Paypal<br>
  	 <input type="radio" name="payment" value ="Debit Card">Debit Card
    
    <div class="container">
    <button type="submit" class="btn btn-default">Submit</button>
    
    </div>
  </form>
  <div class="container"><br>
  <button onClick="history.go(0);">Refresh Page</button>
  </div>
  <br><br><br>
</body> 
</html>