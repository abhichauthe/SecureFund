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
    margin-left: 20%;
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
   margin-left:5em;
    margin-right: -25px;
   
   }

   .navbar-nav li a:hover{
   text-decoration: underline;
    color: #427eb6 !important;
   }
   /*username*/
	.username{
	display:flex;
	margin-top:5%;
	}  
   .username i{
   font-size:25px;
   	mrgin-right:2%;
   }
   .username i{
   	
   	mrgin-left:2%;
   }
   .logBtn{
  margin-top:7%;
  margin-right:1%;
   }
   
    
    nav{
		height: 5em;
	}
	
	.img img{
	margin-left:5%;
	
	margin-top:0px;
	height:580px;
	width:580px;
	}
	
	/*cards */
	.main{
	display: flex;
        justify-content: center;
        align-items: center;
	
	}
	.cards{
		margin:1em;
		width:1000px;
		margin-top:3em;
	}
	.cards a{
		text-decoration: none;
		
		
	}
	.card{
		margin:1em;
		background-color:#EEF5FF;
		border:none;
		height:11em;
		
	}
	.card:hover{
		background-color:#b0c0d3;
		box-shadow:10px 10px 25px #b0c0d3;
		border:none;
	}
   	.logOut{
   top:3%;
   right:2%;
   	position:fixed;
   	}
   
	footer {
		position: fixed;
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
	<script>
  function preventBack(){window.history.forward();}
  setTimeout("preventBack()", 0);
  window.onunload=function(){null};
</script>
	 <% 
    Register reg=null;
	 String username;
  		
	List<Register> lstreg=(List<Register>)session.getAttribute("data");
   reg=lstreg.get(0);
   	username=reg.getUsername();
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
              <div class="username">
              			<i class="fa-solid fa-user" ></i>
              			&nbsp&nbsp<p><%= username %></p>
              			
					</div>
              </li>
              
                <a href="index.jsp" class="logOut"><button type="button" class="btn">LogOut</button></a>
             
              
                
               
              
            </ul>
          </div>
        </div>
      </nav>
      <main class="main">
      <div class="cards">
     	<div class="row">
  <div class="col-sm-6">
    <a href="checkBalanceView.jsp?userId=<%= reg.getUsername() %>">

        <div class="card">
        
            <div class="card-body">
              <h5 class="card-title"><i class="fa-solid fa-piggy-bank"></i>&nbsp&nbspCheck Balance</h5>
              <p class="card-text">"Quickly and securely check your account balance in real-time, providing you with instant financial insights at your fingertips."</p>
              
            </div>
            
          </div>
           </a>
   
  </div>
  <div class="col-sm-6">
  	<a href="RechargeView1.jsp?userId=<%= reg.getUsername() %>">

    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><i class="fa-solid fa-bolt"></i>&nbsp&nbspRecharge</h5>
        <p class="card-text">"Easily recharge your prepaid services with just a few clicks, offering a seamless and convenient way to stay connected."</p>
        
      </div>
    </div>
      </a>
  </div>
</div>

<div class="row">
  <div class="col-sm-6">
  <a href="AddMoneyView1.jsp?userId=<%= reg.getUsername() %>">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><i class="fa-solid fa-hand-holding-dollar"></i>&nbsp&nbspAdd Money</h5>
        <p class="card-text">"Effortlessly add your money with our user-friendly online banking platform."</p>
        
      </div>
    </div>
      </a>
  </div>
  <div class="col-sm-6">
  <a href="WithdrawMoneyView1.jsp?userId=<%= reg.getUsername() %>">
    <div class="card">
      <div class="card-body">
      
        <h5 class="card-title"><i class="fa-solid fa-money-bill-transfer"></i>&nbsp&nbspWithdraw Money</h5>
        <p class="card-text">"Effortlessly initiate secure withdrawals with our user-friendly interface, ensuring quick access to your funds whenever you need them."</p>
        
      </div>
    </div>
      </a>
  </div>
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
   


  


</body>
</html>