<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!--include JSTL Core Library in current JSP Page -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>


<!--Its jsp action tag  -->
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
<div class="row">
<jsp:include page="messages.jsp"></jsp:include>
</div>
	<div class="row">

		<core:forEach var="food" items="${flist}">
			<div class="col-md-6 col-lg-4 col-xl-3 my-3">
				<div class="card">
					<img src="img\food.jpg" class="card-img-top" alt="...">
					<div class="card-body">
					
						<h5 class="card-title">${food.food_Name}</h5>
						<h5 class="card-price">&#8377; ${food.food_Price}</h5>
						<p style="background: lightblue;"><img src="img/tempo.jpg" alt="" width="25px" height="25px">
						Standard Delivery Timing : 11am - 11pm</p>
             
					
						<core:if test="${user.role=='owner' or user.role=='admin' }">
						
						<a
							onclick="return confirm('Do you want to delete ${food.food_Name}')"
							href="do.foodoperation?action=deletefood&food_Id=${food.food_Id}"
							class="btn btn-danger"><i class="fas fa-trash"></i></a>
							
							
							<!--  href="do.foodoperation?action=deletefood&food_Id=${food.food_Id}"   -->
							
							<a data-bs-toggle="modal" data-bs-target="#update-food-${food.food_Id}"
				class="btn btn-warning"><i class="fas fa-edit"></i></a> 
				
			
			<!-- --------------------UPDATE CODE -------------------------------------------->
			<!-- Modal -->
				<div class="modal fade" id="update-food-${food.food_Id}" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
					
					
					
						<div class="modal-content">
						<form action="do.foodoperation" method="post">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Update Food</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							
							
							<div class="modal-body">
								 
									<input type="hidden" name="action" value="updatefood">
									<input type="hidden" name="action" value="addfood">
									<div class="mb-3">
									
									
										<label for="foodid" class="form-label">Food Id</label> <input
											type="text" class="form-control" id="food_Id"
											name="food_Id" value="${food.food_Id}" readonly>
									</div>
									<div class="mb-3">
										<label for="foodname" class="form-label">Food Name</label> <input
											type="text" class="form-control" id="food_Name"
											name="food_Name" value="${food.food_Name}">
									</div>
									<div class="mb-3">

										<label for="foodprice" class="form-label">Food Price</label> <input
											type="text" class="form-control" id="food_Price"
											name="food_Price" value="${food.food_Price}">
									</div>			

									

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary">Update</button>
							</div>
						</div>
						</form>
						
					</div>
				</div>
				</core:if>
				
				
				
				<a onclick="return confirm('Do you want to add ${food.food_Name}')"				
				 href="viewcart.jsp" name="action" value="${flist}"	class="btn btn-primary">
				<i class="fas fa-cart-plus"></i></a>
							
					</div>
				</div>

			</div>

		</core:forEach>

	</div>

</div>
<!-- for current time code
<input type="text" id="currentTime" required size="1">
<script>
var today = new Date();
var time = today.getHours()+4 + ":" + today.getMinutes();
  document.getElementById("currentTime").value = time;
</script>
 -->
<jsp:include page="footer.jsp"></jsp:include>