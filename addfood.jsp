<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
     <jsp:include page="header.jsp"></jsp:include>
    
<div class="container">
		<div class='row'>
			<div class='col'>
				<h2>Add New Food Here</h2>
			</div>
		</div>
		<div class="row">
			<div class='col'>
				
				<img src="img/food.jpg" alt="image not found" width="500px" height="230px">
			</div>
			
			<div class='col'>
				<form action="do.foodoperation" method="post">
					<input type="hidden" name="action" value="addfood">
					<div class="mb-3">
						<label for="food_Name" class="form-label">Food Name</label> <input
							type="text" class="form-control" id="food_Name" name="food_Name">
					</div>
					<div class="mb-3">
						<label for="food_Price" class="form-label">Food Price</label> <input
							type="text" class="form-control" id="food_Price" name="food_Price">
					</div>

					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
				<!-- Success message printing -->
			<jsp:include page="messages.jsp"></jsp:include>			
				
			</div>
		</div>
	</div>
	
	 <jsp:include page="footer.jsp"></jsp:include>