<%@page import="Bank.model.recharge"%>
<%@page import="Bank.model.recharge2"%>
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
         max-width:100%; 
        overflow-x:hidden;
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
   .logBtn{
  margin-top:7%;
  margin-right:1%;
   }
   
    
    nav{
		height: 5em;
	}
	
	/*Form css*/
	.img img{
	margin-left:1%;
	
	margin-top:4%;
	height:500px;
	width:550px;
	}
	
	/* form login*/
	.main{
		display:flex;
		justify-content:center;
	}
	.form{
    	border:1px solid #5099dd;
    	box-shadow:5px 5px 18px #5099dd;
    	height:590px;
    	width:35%;
    	margin-left:0%;
    	margin-top:2%;
    	 border-radius:10px;
    	 margin-bottom:2%;
    	
    }
    .tab tr{
    	margin-bottom:15px;
    }
    .input{
    margin-top: 5px;
    border-radius: 3px;
    border:none;
    border-top:1px solid #5099dd;
    border-bottom:1px solid #5099dd;
    margin-left:10px;
    width: 100%;
  padding: 8px 15px;
  margin: 4px 0;
  display: inline-block;
  box-sizing: border-box;
    }
    .form h2{
    margin-top:0%;
    margin-bottom: 3%;
    }
    .form label{
    margin-top:2%;
    }
    
    
    .input:focus{
    margin-top: 5px;
    border-radius: 3px;
     border:none;
    outline: 1px solid #5099dd;
    padding: 8px 15px;
  margin: 4px 0;
  display: inline-block;
  box-sizing: border-box;
    }
    
    /* form button*/ 
     .submit{
    height: 2.5em;
    width: 6em;
   background-color: #5099dd;
   color: white;
   font-weight: bold;
   border:none;
   border-radius:5px;
   font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
   margin-top:15%;
  
   }
   .submit:hover{
    height: 2.5em;
    width: 6em;
    font-weight: bold;
   border: 2px solid #5099dd;
   color: #5099dd;
   background-color:#fff;
  
   
   
   }
	/*success logo*/
   .success{
   	display:flex;
   }
   .success h4{
   	margin-top:7%;
   	margin-left:2%;
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
   
   
   recharge reg=null;
	 String username;
  		
	 reg=(recharge)session.getAttribute("result");
   
  	
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
       
         <div class="form"> 
   <div class="row mt-2">
   <div class="col-8 offset-2">
   <div class="success">
    <img class="img1" src="success.gif" alt="success">
   <h4 class="text">Recharge successful!</h4>
   </div>
   <br>
  	<h5>Thank you for your Payment</h5>
  	 <br>
    <form action="">
  <table>
   
 	
     <label for="username"><b>Username</b></label>
     
  	<input type="text" id="username" name="username" class="input" required value="<%= reg.getUsername() %>" disabled>
	 
	     <label for="password"><b>Password</b> </label>
  	<input type="text" id="password" name="password" class="input" required value="<%= reg.getPassword() %>" disabled>
  	<label for="regNo"><b>Mobile No</b></label>
     
  	<input type="number" id="mobile" name="mobile" required disabled
               max="9999999999" min="1000000000" pattern=[0-9]{1}[0-9]{9} class="input" required value="<%= reg.getMobile() %>">
  	 <label for="exampleInputPassword1" class="form-label" name="operator"><b>Operator</b></label>
            <input type="text" id="operator" name="operator" class="input" required value="<%= reg.getOperator() %>" disabled>
            
             <label for="plans"><b>Amount</b></label>
     
  	<input type="text" id="plans" name="plans" class="input" required value="<%= reg.getPlan() %>" disabled>
	 
    
  
     
     
    
    </table>
   
     <div style="color: #FF0000;">${errorMessage}</div><br>
     
    

    </form>
      
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
   
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">

</script>


  


</body>
</html>