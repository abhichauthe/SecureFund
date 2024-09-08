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
      background-color: transparent; 
     /* background-image:url("./bank1.png");
		height: 90vh;
        width: 100vw; 
  background-repeat: no-repeat; 
  background-size: cover; */
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
   .navbar-nav li button{
    height: 2.5em;
    width: 6em;
   background-color: #5099dd;
   color: white;
   font-weight: bold;
  
   }
   .navbar-nav li button:hover{
    height: 2.5em;
    width: 6em;
    font-weight: bold;
   border: 2px solid #5099dd;
   color: #5099dd;
   
   }
   .navbar-nav li .btnSignup{
    margin-left: 10em;
    margin-right: -25px;
   
   }

   .navbar-nav li a:hover{
   text-decoration: underline;
    color: #427eb6 !important;
   }
   
    /* form login*/
	.main{
		 display: flex;
  align-items: center;
  justify-content: center;
	}
	.form{
    	border:1px solid #5099dd;
    	box-shadow:5px 5px 18px #5099dd;
    	height:490px;
    	width:55%;
    	margin-top:3%;
    	 border-radius:10px;
    	
    }
    .tab tr{
    	margin-bottom:15px;
    }
    .input{
    margin-top: 10px;
    border-radius: 3px;
    border:1px solid #5099dd;
    margin-left:10px;
    width: 100%;
  padding: 8px 15px;
  margin: 8px 0;
  display: inline-block;
  box-sizing: border-box;
    }
    .form h2{
    margin-bottom: 6%;
    }
    .form label{
    margin-top:2%;
    }
    
    
    .input:focus{
    margin-top: 10px;
    border-radius: 3px;
     
    outline: 1px solid #5099dd;
    padding: 8px 15px;
  margin: 8px 0;
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
   margin-top:2%;
  
   }
   .submit:hover{
    height: 2.5em;
    width: 6em;
    font-weight: bold;
   border: 2px solid #5099dd;
   color: #5099dd;
   background-color:#fff;
  
   
   
   }
   .email a{
   text-decoration:none;
   		
   }
   .email i{
   	font-size:20px;
   }
   .email .phone{
   	margin-left:26%;
   }
   
    nav{
		height: 5em;
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
					<a href="signupView.jsp" class="btnSignup"><button type="button" class="btn">SignUp</button></a>
              </li>
              <li class="nav-item">
                <a href="loginView1.jsp"><button type="button" class="btn">Login</button></a>
              </li>
              
                
               
              
            </ul>
          </div>
        </div>
      </nav>
      <main class="main">
       <div class="form"> 
   <div class="row mt-4">
   <div class="col-8 offset-2">
   <div class="email"><i class="fa-solid fa-envelope"></i> &nbsp; <a href="mailto:adityajavanjal111@gmail.com">contact@moneybank182.com</a>
   	<i class="fa-solid fa-phone phone"></i> &nbsp;  <a href="tel:9699869191"> 
        Call 1800-4567-1313
    </a> 
   </div>
   	<label for="username">Enter Name</label>
     
  	<input type="text" id="username" name="username" class="input" required>
	 
	     <label for="email">Enter email </label>
  	<input type="email" id="email" name="email" class="input" required>
  	<label for="desc">Tell us something...</label>

<textarea id="desc" name="desc" rows="4" cols="100" class="input">
</textarea>	

<input type="submit" value="Submit" class="submit">
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