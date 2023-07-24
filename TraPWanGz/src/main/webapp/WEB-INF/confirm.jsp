<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="form" uri= "http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/style.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TraPWanGz | Confirm Order</title>
</head>
<body>

	<nav class="navbar">
    
    <div class="logo">Welcome, ${user.firstName} | <a href = "/logout">Log out of your account</a></div>
    					
    <ul class="nav-links">

      <div class="menu">

        <li class="services">
          <a href="/createOrder">Create Order</a>

          <ul class="dropdown">
            <li><a href="/wings">Wings</a></li>
            <li><a href="/sides">Sides</a></li>
            <li><a href="/sets">Sets</a></li>
          </ul>

        </li>

        <li><a href="/home">Home</a></li>
        <li><a href="/contact">Contact</a></li>
        <li><a href="/login">Login</a></li>
        <li><a href="/register">Make an Account</a></li>
      </div>
    </ul>
  </nav>


<H2>Order Confirmation</H2>

<table class = "table table-hover">
    <thead>
        <tr>
            <th>Combo</th>
            <th>Flavor</th>
            <th>Side</th>
            <th>Drink</th>
            <th>Notes</th>
        </tr>
    </thead>
    <tbody>
	         <tr>
	         	<td>
					  <!-- COMBO CHOICE FROM HERE -->
	         			<c:choose>
  
							  <c:when test="${order.comboChoice == 1}">
								6-piece combo
							  </c:when>
							  
							  <c:when test="${order.comboChoice == 2}">
								10-piece combo
							  </c:when>
							
							  <c:otherwise>
								15-piece combo
							  </c:otherwise>
							
						</c:choose>
	         		
	         	</td>
	         	
   		        <td>
   		    		<!-- FLAVORS FROM HERE -->
							<c:choose>
							  
							  	<c:when test="${order.flavorChoice == BMF}">
								BMF
							  	</c:when>
					
							  	<c:when test="${order.flavorChoice == DSGB}">
								DSGB
							  	</c:when>
							  
							   	<c:when test="${order.flavorChoice == EXO}">
								Exotics
							  	</c:when>
							  
							   	<c:when test="${order.flavorChoice = TRY}">
								Trap Yak
							  	</c:when>
							  
							   	<c:when test="${order.flavorChoice == GAR}">
								Garlic Parm
							  	</c:when>
							
								<c:when test="${order.flavorChoice == TRA}">
								Trapping Apple
							  	</c:when>
							  
							  	<c:when test="${order.flavorChoice == BAD}">
								Bad & Boujee
							  	</c:when>
							  
							   	<c:when test="${order.flavorChoice == HEN}">
								Henndawgs
							  	</c:when>
							  
				  				<c:when test="${order.flavorChoice == TRC}">
								Trap Chili
							  	</c:when>
							  
							  	<c:when test="${order.flavorChoice == CIL}">
								Cilantro Lime Jalepeno
							  	</c:when>
							  
							  	<c:when test="${order.flavorChoice == STR}">
								Strawberry Heat
							  	</c:when>
							  	
							  	<c:when test="${order.flavorChoice == TRH}">
								Trap Habanero
							  	</c:when>
						
								<c:when test="${order.flavorChoice == LEM}">
								Lemon Pepper
							  	</c:when>
							
								<c:when test="${order.flavorChoice == HON}">
								Honey Garlic
							  	</c:when>
							  	
							  	<c:when test="${order.flavorChoice == GOL}">
								Gold Rush
							  	</c:when>
							  	
							  	<c:when test="${order.flavorChoice == BUF}">
								Buffalo
							  	</c:when>
							  	
							  	<c:when test="${order.flavorChoice == RAN}">
								Ranch
							  	</c:when>
					
							  <c:otherwise>
								Hooo
							  </c:otherwise>
							
							</c:choose>	    
   		        
   		         	 </td>
  	         	
  	         	<td>
	         	   		   <!-- SIDES FROM HERE -->
	         	   		   <c:choose>
  
							  <c:when test="${order.sideChoice == MCC}">
								Macaroni & Cheese
							  </c:when>
							  
							  <c:when test="${order.comboChoice == FFS}">
								French Fries
							  </c:when>
							
							  <c:otherwise>
								Baked Beans
							  </c:otherwise>
							
						</c:choose>
  	         	</td>
  	         	
 	         	<td>
         		   		   <!-- DRINKS FROM HERE -->
         		   		    <c:choose>
  
							  <c:when test="${order.drinkChoice == SPR}">
								Sprite
							  </c:when>
							  
							  <c:when test="${order.drinkChoice == COK}">
								Coke
							  </c:when>
							  
							 <c:when test="${order.drinkChoice == TRJ}">
								Trap Juice
							  </c:when>
							
							  <c:otherwise>
								(none)
							  </c:otherwise>
							
						</c:choose>
         		
         		</td>
         		
         		<td>
					${order.notes}         		
         		</td>
         		
         		
	        </tr>
    </tbody>
</table>
	
	<form action = "/completeOrder"  method = "post"  >
			<input type = "hidden"  name = "_method"  value = "put">
	
			<input type = "hidden"  name ="comboChoice"  value = "${order.comboChoice }"/>
			<input type = "hidden"  name ="flavorChoice"  value = "${order.flavorChoice}"/>
			<input type = "hidden"  name ="sideChoice"  value = "${order.sideChoice}"/>
			<input type = "hidden" name = "drinkChoice"  value = "${order.drinkChoice }"/>
			<input type = "hidden" name = "notes"  value = "${order.notes}]"/>
			<input type = "hidden"  name ="orderComplete"  value = "true"/>
			<input type = "submit"  value = "Complete Order">
	
	</form>

	<button class = "btn btn-primary" type = "submit"  value  = "createOrder"  >Edit Order</button>

</body>
</html>