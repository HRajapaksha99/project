<%@page import="com.oop.model.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="com.oop.model.Item"%>
<%@page import="com.oop.service.ItemServiceImpl"%>
<%@page import="com.oop.service.IItemService"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.oop.model.RegisterBean"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Update Items | Teen Fashion </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Rubik:400,700" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/7db8364a09.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    
    
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
  
    <link rel="stylesheet" href="css/aos.css">
    
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/addItem.css">

</head>

<body>

    <div class="site-wrap">

	 <jsp:include page="header.jsp"></jsp:include>

        <br> <br><br>

        
        <div class="container">
            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Update Item</a></li>
                <li class="breadcrumb-item active">Form </li>
            </ol>
        </div> <br>
        

            <div class="container">
        	<a href="addItem.jsp">
	        			<button type="button" class="btn btn-primary btn-lg btn-block">Add An Item &nbsp; &nbsp;<i class="fas fa-plus"></i></button>
	        </a> <br>
                 <form action="UpdateItemServlet" method="POST">
                 
                 <%
            		Item i = (Item) request.getAttribute("item");
                 %>
               
                    
                      <input name="name" type="hidden" class="form-control" value="<%=i.getName()%>"/>
                        <h4 class="text-left text-primary">Item Details</h4>
                        <br>
				
				<!-- ROW 01 -->
				<div class="row">
					<div class="col-sm-3 ">
						<h6>Product Id</h6>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<input name="itemNo" type="text"
								class="form-control form-control-lg" required="required">
							<input name="uname" type="hidden"
								class="form-control form-control-lg"
								value="<%=(String)session.getAttribute("username")%>">
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
				<!-- ROW 03 -->
				<div class="row">
					<div class="col-sm-3 ">
						<h6>Product Name</h6>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<input name="name" type="text"
								class="form-control form-control-lg" required="required">
							
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>

			


		<!-- ROW 05 -->
		<div class="row">
			<div class="col-sm-3">
				<h6>Category</h6>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<select name="category" class="custom-select mr-sm-2"
						id="inlineFormCustomSelect" required="required">
						<option selected>--</option>
						<option value="Gents">Gents</option>
						<option value="Ladies">Ladies</option>
						<option value="Kids">Kids</option>

					</select>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
		<!-- ROW 04 -->
		<div class="row">
			<div class="col-sm-3 ">
				<h6>Item Specific</h6>
			</div>
			<div class="form-group">
				<label for=""> Available Sizes</label><br>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<input type="checkbox" id="day1" name="size" value="S"> <label
						for="item1">S</label><br>
						 <input type="checkbox" id="day2"
						name="item" value="M"> <label for="item2">M</label><br>
					<input type="checkbox" id="day3" name="size" value="L"> <label
						for="item3">L</label><br>
						 <input type="checkbox" id="day4"
						name="item" value="XL"> <label for="size">XL</label><br>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>




		<!-- ROW 07 -->
		<div class="row">
			<div class="col-sm-3 ">
				<h6>Prize</h6>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<input name="prize" type="text" class="form-control form-control-lg"
						required="required">
			</div>
			<div class="col-sm-3"></div>
		</div>
</div>




		<!-- ROW 08 -->

		<div class="row">
			<div class="col-sm-3">
				<h6>Item Description</h6>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<textarea name="desc_" cols="60" rows="10"
						class="form-control form-control-lg"></textarea>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
			
		<!-- ROW 05 -->
					<div class="row">
						<div class="col-sm-3 ">
							<h6>Upload Photos</h6>
						</div>
						<div class="col-sm-6">
							<!-- ROW 05 => 01 -->
							<div class="row" id="album">
								<div class="col-sm-4">
									<div class="inner-div">
										<input type="file">
									</div>
								</div>
								<div class="col-sm-4">
									<div class="inner-div">
										<input type="file">
									</div>
								</div>
								<div class="col-sm-4">
									<div class="inner-div">
										<input type="file">
									</div>
								</div>
							</div>
							
							<br>

		
		<br>
		<br>                       
		 <!-- ROW 10 -->
                        <div class="row">
                            <div class="col-sm-3 ">
            
                            </div>
                            <div class="col-sm-6">
                           
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="input-group">
                                            <Input type="submit" class="btn btn-dark" value="Update">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3"></div>
                        </div>
                    </form>
                    
                    
                    <div class="row">
                            <div class="col-sm-3 ">
                            </div>
                            <div class="col-sm-6">
                                <form method="POST" action="DeleteItemServlet">
										<input type="hidden" name="itemNo"value="<%=i.getItemNo()%>" /> 
										<button type="submit" class="btn btn-danger btn-lg btn-block">Delete Item &nbsp; &nbsp;<i class="fas fa-user-slash"></i></button>
									</form>
                            </div>
                            <div class="col-sm-3"></div>
                        </div>
                    
                                    
                </div>
            <br><br><br>
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>

    <script src="js/main.js"></script>
    
    <jsp:include page="footer.jsp"></jsp:include>

</body>

</html>