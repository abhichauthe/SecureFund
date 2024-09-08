<%@page import="Bank.model.recharge1"%>
<%@page import="java.util.List"%>
<%@page import="Bank.model.Register"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MoneyBank</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
    crossorigin="anonymous" />
    <style>
         body{
      /* background-color: transparent; */
      /*background-image:url("./BankLogin.png");*/
		height: 90vh;
        width: 100vw;
        max-width: 100%;
    overflow-x: hidden; 
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover; 
   }
   
   /* logo css */
   .container-fluid img
   {
    height: 15%;
    width: 15%;
   }
   .navbar-nav{
    margin-left: 10%;
    margin-right: 20%;
    /* display: flex; */
        /* text-align: center; */
        /* justify-content: center; */
        /* justify-content: space-evenly; */
   }
   .navbar-nav li {
    padding-left: 6%;
    padding-right: 6%;
    font-size: 18px;
    font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    font-weight: bold;
    
   }
   .navbar-nav li a{
    color: #5099dd;;
   
    
   }
   .navbar-nav  button{
    height: 2.5em;
    width: 6em;
   background-color: #5099dd;
   color: white;
   font-weight: bold;
   font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
  
   }
   .navbar-nav  button:hover{
    height: 2.5em;
    width: 6em;
    font-weight: bold;
   border: 2px solid #5099dd;
   color: #5099dd;
   
   }
   .navbar-nav li .username{
   margin-left:3em;
    margin-right: -25px;
   
   }

   .navbar-nav li a:hover{
   text-decoration: underline;
    color: #427eb6 !important;
   }
   /*username*/
	.username{
	display:flex;
	margin-top:3%;
	}  
   .username i{
   font-size:25px;
   	mrgin-right:2%;
   }
   .username i{
   	
   	mrgin-left:2%;
   }
   
   
    
    nav{
		height: 5em;
		max-width:100%;
	}
	
	
  /* form button*/ 
     .submit{
    height: 2.5em;
    width: 6em;
   background-color: #EE2737;
   color: white;
   font-weight: bold;
   border:none;
   border-radius:5px;
   font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
   margin-top:0px;
  /* margin-left:25%;*/
  
   }
   .submit:hover{
    height: 2.5em;
    width: 6em;
    font-weight: bold;
   border: 2px solid #EE2737;
   color: #EE2737;
   background-color:#fff;
  
   
   
   }
/*cards*/

.card{
	margin:2% 1% 1% 2%;
	padding:1%;
	line-height:18px;
	border-radius:10px;
	background-color:#EEEDEB;
	/*border:1px solid #5099dd;*/
	border:none;
    	
}
.card:hover{
	box-shadow:2px 2px 8px #ed505d;
}
	
	
   .card-title{
   display:inline-block;
   }
   .parent{
   display:flex;
   }
   .main{
   	width:100vw;
   }
   .row{
   margin-left:7rem;
   margin-right:0px;
  
  
   }
	.card img{
		display:inline-block;
		height:40px;
		width:50px;
		margin-left:62%;
		position:absolute;
	}
   
	footer {
		position: relative;
    background-color: #b0c0d3;
    color: black;
    text-align: center;
    
     bottom: 0;
     height: 5em;
  width: 100%;
}
  .f-info-links a{
	text-decoration: none;
	color: black;
}	  
.f-info{
	margin-top:0;
}
footer p{
	margin-bottom:0px;
}


    </style>
   
</head>
<body>
	<%
   //String userId = request.getParameter("userId");
   // Now, 'userId' contains the value passed from the URL
   
   
   recharge1 reg=null;
	 String username;
  		
	 reg=(recharge1)session.getAttribute("result");
   
  	
	%>
		
  		
    <nav class="navbar navbar-expand-md bg-body-secondary">
        <div class="container-fluid">
            <img src="./BankLogo1.png" alt="error">
         
          <div class="collapse navbar-collapse">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="index.jsp">Home</a>
              </li>
             
             
              <li class="nav-item">
                 <a class="nav-link" href="about.jsp">About</a>
              </li>
              <li class="nav-item">
                 <a class="nav-link" href="contact.jsp">Contact</a>
              </li>
               <li class="nav-item">
                 <a class="nav-link" href="Dashboard1.jsp">DashBoard</a>
              </li>
              <li class="nav-item">
              <div class="username">
              			<i class="fa-solid fa-user" ></i>
              			&nbsp&nbsp<p><%= reg.getUsername() %></p>
              			
					</div>
              </li>
              
               
             
              
                
               
              
            </ul>
          </div>
        </div>
      </nav>
      <main class="main">
        <div class="row">
            <div class="card col-3" style="width: 15rem; height:15rem">


                <div class="parent">
                    <h5 class="card-title"><b>₹ 19</b></h5>
                    <img src="./Airtel.png" alt="Airtel" class="jio">
                </div>
                <form action="recharge2Controller">
                    <input type="hidden" id="username" name="username" class="input" required
                        value="<%= reg.getUsername() %>">
                    <input type="hidden" id="password" name="password" class="input" required
                        value="<%= reg.getPassword() %>">
                    <input type="hidden" id="mobile" name="mobile" required value="<%= reg.getMobile() %>">
                    <input type="hidden" id="operator" name="operator" required value="Airtel">
                    <input type="hidden" id="plans" name="plans" required value="19">
                    <p>VALIDITY : <b>1 Day</b></p>
                    <p>DATA : <b>1 GB</b></p>
                    <p>Benefit of 1GB with validity of 1 Day.</p>
                    <button type="submit" class="submit">Recharge</button>
                </form>



            </div>
            <div class="card col-3" style="width: 15rem; height:15rem">


                <div class="parent">
                    <h5 class="card-title"><b>₹ 57</b></h5>
                    <img src="./Airtel.png" alt="Airtel" class="jio">
                </div>
                <form action="recharge2Controller">
                    <input type="hidden" id="username" name="username" class="input" required
                        value="<%= reg.getUsername() %>">
                    <input type="hidden" id="password" name="password" class="input" required
                        value="<%= reg.getPassword() %>">
                    <input type="hidden" id="mobile" name="mobile" required value="<%= reg.getMobile() %>">
                    <input type="hidden" id="operator" name="operator" required value="Airtel">
                    <input type="hidden" id="plans" name="plans" required value="57">
                    <p>VALIDITY : <b>7 Days</b></p>
                    <p>DATA : <b>6 GB</b></p>
                    <p>Benefit of 6 GB  Data for 6 days.</p>
                    <button type="submit" class="submit">Recharge</button>
                </form>



            </div>
            <div class="card col-3" style="width: 15rem; height:15rem">


                <div class="parent">
                    <h5 class="card-title"><b>₹ 151</b></h5>
                    <img src="./Airtel.png" alt="Airtel" class="jio">
                </div>
                <form action="recharge2Controller">
                    <input type="hidden" id="username" name="username" class="input" required
                        value="<%= reg.getUsername() %>">
                    <input type="hidden" id="password" name="password" class="input" required
                        value="<%= reg.getPassword() %>">
                    <input type="hidden" id="mobile" name="mobile" required value="<%= reg.getMobile() %>">
                    <input type="hidden" id="operator" name="operator" required value="Airtel">
                    <input type="hidden" id="plans" name="plans" required value="151">
                    <p>VALIDITY : <b>30 Days</b></p>
                    <p>DATA : <b>8 GB</b></p>
                    <p>Benefit of 8 GB Data for 30 days.</p>
                    <button type="submit" class="submit">Recharge</button>
                </form>



            </div>
             <div class="card col-3" style="width: 15rem; height:15rem">


                <div class="parent">
                    <h5 class="card-title"><b>₹ 299</b></h5>
                    <img src="./Airtel.png" alt="Airtel" class="jio">
                </div>
                <form action="recharge2Controller">
                    <input type="hidden" id="username" name="username" class="input" required
                        value="<%= reg.getUsername() %>">
                    <input type="hidden" id="password" name="password" class="input" required
                        value="<%= reg.getPassword() %>">
                    <input type="hidden" id="mobile" name="mobile" required value="<%= reg.getMobile() %>">
                    <input type="hidden" id="operator" name="operator" required value="Airtel">
                    <input type="hidden" id="plans" name="plans" required value="299">
                    <p>VALIDITY : <b>28 days</b></p>
                    <p>DATA : <b>1.5 GB/Day</b></p>
                    <p>Unlimited calling for 28 days with 1.5 GB daily data.</p>
                    <button type="submit" class="submit">Recharge</button>
                </form>



           
        </div>
    </div>    
	  <%-- second row--%>
	 <div class="row">
            <div class="card col-3" style="width: 15rem; height:15rem">


                <div class="parent">
                    <h5 class="card-title"><b>₹ 479</b></h5>
                    <img src="./Airtel.png" alt="Airtel" class="jio">
                </div>
                <form action="recharge2Controller">
                    <input type="hidden" id="username" name="username" class="input" required
                        value="<%= reg.getUsername() %>">
                    <input type="hidden" id="password" name="password" class="input" required
                        value="<%= reg.getPassword() %>">
                    <input type="hidden" id="mobile" name="mobile" required value="<%= reg.getMobile() %>">
                    <input type="hidden" id="operator" name="operator" required value="Airtel">
                    <input type="hidden" id="plans" name="plans" required value="479">
                    <p>VALIDITY : <b>56 Days</b></p>
                    <p>DATA : <b>2 GB/Day</b></p>
                    <p>Unlimited calling for 56 days with 2GB daily data.</p>
                    <button type="submit" class="submit">Recharge</button>
                </form>



            </div>
            <div class="card col-3" style="width: 15rem; height:15rem">


                <div class="parent">
                    <h5 class="card-title"><b>₹ 719</b></h5>
                    <img src="./Airtel.png" alt="Airtel" class="jio">
                </div>
                <form action="recharge2Controller">
                    <input type="hidden" id="username" name="username" class="input" required
                        value="<%= reg.getUsername() %>">
                    <input type="hidden" id="password" name="password" class="input" required
                        value="<%= reg.getPassword() %>">
                    <input type="hidden" id="mobile" name="mobile" required value="<%= reg.getMobile() %>">
                    <input type="hidden" id="operator" name="operator" required value="Airtel">
                    <input type="hidden" id="plans" name="plans" required value="719">
                    <p>VALIDITY : <b>84 Days</b></p>
                    <p>DATA : <b>1.5 GB/Day</b></p>
                    <p>Unlimited calling for 84 days with 1.5GB daily data.</p>
                    <button type="submit" class="submit">Recharge</button>
                </form>



            </div>
            <div class="card col-3" style="width: 15rem; height:15rem">


                <div class="parent">
                    <h5 class="card-title"><b>₹ 902</b></h5>
                    <img src="./Airtel.png" alt="Airtel" class="jio">
                </div>
                <form action="recharge2Controller">
                    <input type="hidden" id="username" name="username" class="input" required
                        value="<%= reg.getUsername() %>">
                    <input type="hidden" id="password" name="password" class="input" required
                        value="<%= reg.getPassword() %>">
                    <input type="hidden" id="mobile" name="mobile" required value="<%= reg.getMobile() %>">
                    <input type="hidden" id="operator" name="operator" required value="Airtel">
                    <input type="hidden" id="plans" name="plans" required value="902">
                    <p>VALIDITY : <b>90 Days</b></p>
                    <p>DATA : <b>2 GB/Day</b></p>
                    <p>Unlimited calling for 90 days with 2GB daily data.</p>
                    <button type="submit" class="submit">Recharge</button>
                </form>



            </div>
             <div class="card col-3" style="width: 15rem; height:15rem">


                <div class="parent">
                    <h5 class="card-title"><b>₹ 2999</b></h5>
                    <img src="./Airtel.png" alt="Airtel" class="jio">
                </div>
                <form action="recharge2Controller">
                    <input type="hidden" id="username" name="username" class="input" required
                        value="<%= reg.getUsername() %>">
                    <input type="hidden" id="password" name="password" class="input" required
                        value="<%= reg.getPassword() %>">
                    <input type="hidden" id="mobile" name="mobile" required value="<%= reg.getMobile() %>">
                    <input type="hidden" id="operator" name="operator" required value="Airtel">
                    <input type="hidden" id="plans" name="plans" required value="2999">
                    <p>VALIDITY : <b>365 Days</b></p>
                    <p>DATA : <b>2.5 GB/Day</b></p>
                    <p>Unlimited calling for 365 days with 2.5GB daily data.</p>
                    <button type="submit" class="submit">Recharge</button>
                </form>



           
        </div>
    </div>    
	  
	  
      </main>
      
 
       <footer>
        <p>&copy; 2023 Bank</p>
         <div class="f-info">
        <div class="f-info-socials">
            <i class="fa-brands fa-square-instagram"></i>
            <i class="fa-brands fa-facebook"></i>
            <i class="fa-brands fa-linkedin"></i>
        </div>
       
        <!-- copyright symbol -->
        <div class="f-info-links">
            <a href="about.jsp">privacy</a>
            <a href="about.jsp">terms</a>
        </div>
    </div>
    </footer>
   
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">

</script>


  


</body>
</html>