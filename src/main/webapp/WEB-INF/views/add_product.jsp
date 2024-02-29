<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp"%>
</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center ">Fill the Product Details</h1>

				<form action="handle-post" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Product Name</label> <input
							type="text" class="form-control" name="name"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter Product name">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Product Description</label> <textarea
							type="text" class="form-control" 
							name="description"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							rows="5"
							placeholder="Enter Product Description"></textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Email Price</label> <input
							type="text" class="form-control" name="price"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter Product name">
					</div>
					<div class="contaner text-center">
						<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add</button>

					</div>
				</form>


			</div>



















		</div>
	</div>



</body>
</html>