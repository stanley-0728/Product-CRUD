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
				<h1 class="text-center ">Change Product Details</h1>

				<form action="${pageContext.request.contextPath}/handle-post" method="post">
								<input type="hidden" value="${product.id }" name="id"/>
				
					<div class="form-group">
						<label for="exampleInputEmail1">Product Name</label> <input
							type="text" class="form-control" name="name"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							value="${product.name }"
							placeholder="Enter Product name">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Product Description</label> <textarea
							type="text" class="form-control" 
							id="exampleInputEmail1" aria-describedby="emailHelp"
							rows="5"
							value="${product.description}"
							name="description"
							placeholder="Enter Product Description"></textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Enter Price</label> <input
							type="text" class="form-control" name="price"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							value="${product.price}"
							placeholder="Enter Product name">
					</div>
					<div class="contaner text-center">
						<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Update</button>

					</div>
				</form>


			</div>



















		</div>
	</div>



</body>
</html>