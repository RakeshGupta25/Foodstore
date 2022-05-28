<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	

<%@ page import="java.util.List,com.foodstore.pojo.Food"%>


  
<%
List<Food> flist = (List<Food>) session.getAttribute("flist");
%>

<jsp:include page="header.jsp"></jsp:include>

<div class="container">
		<jsp:include page="messages.jsp"></jsp:include>
		
	<table class="table table-striped">
		<thead class="table-dark">
			<tr>
				<td>Food Id</td>
				<td>Food Name</td>
				<td>Food Price</td>
				<td colspan="3">Actions</td>
			</tr>

		</thead>
		<%
		for (Food food : flist) {
		%>
		<tr>
			<td><%=food.getFood_Id()%></td>
			<td><%=food.getFood_Name()%></td>
			<td><%=food.getFood_Price()%></td>
			<td><a
				onclick="return confirm('Do you want to delete <%=food.getFood_Name()%>')"
				href="do.foodoperation?action=deletefood&food_Id=<%=food.getFood_Id()%>"
				class="btn btn-danger"><i class="fas fa-trash"></i></a></td>
	


			<!-- <a> is always get the request from the server -->

			<!-- Button trigger modal -->   

			<td>
			
			<a data-bs-toggle="modal" data-bs-target="#update-food-<%=food.getFood_Id()%>"
				class="btn btn-warning"><i class="fas fa-edit"></i></a> 
				
			
			<!-- Modal -->
				<div class="modal fade" id="update-food-<%=food.getFood_Id()%>" tabindex="-1"
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
										<label for="foodname" class="form-label">Food Id</label> <input
											type="text" class="form-control" id="food_Id"
											name="food_Id" value="<%=food.getFood_Id()%>" readonly>
									</div>
									<div class="mb-3">
										<label for="foodname" class="form-label">Food Name</label> <input
											type="text" class="form-control" id="food_Name"
											name="food_Name" value="<%=food.getFood_Name()%>">
									</div>
									<div class="mb-3">

										<label for="foodprice" class="form-label">Food Price</label> <input
											type="text" class="form-control" id="food_Price"
											name="food_Price" value="<%=food.getFood_Price()%>">
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
				</div></td>
		</tr>
		<%
		}
		%>
		<tfoot>
			<tr>
				<td colspan="5"><h3>
						Total Number of Foods are
						<%=flist.size()%></h3></td>
			</tr>
		</tfoot>
	</table>
</div>
<jsp:include page="footer.jsp"></jsp:include>
