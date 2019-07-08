<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif;
	background-color: #e0efde;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {

		$("#submit").click(function() {
			var productObject = new Object();
			productObject.name = $('#product_name').val();
			productObject.price = $("#product_price").val();
			productObject.description = $('#product_desc').val();
			console.log(productObject)

			$.ajax({
				url : 'http://localhost:9090/shop/product/',
				dataType : 'json',
				type : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(productObject),
				processData : false,
				success : function(data, textStatus, jQxhr) {
					window.location.href = '/';
				},
				error : function(jqXhr, textStatus, errorThrown) {
					console.log(errorThrown);
				}
			});
			
		});

	});
</script>
<title>Add New Shop</title>
</head>
<body>

	<div id="main_div" align="center">
		<h1>Add New Product</h1>
		<br /> <br />
		<table border="0">
			<tr>
				<td>Product Name:</td>
				<td><input type="text" id="product_name"></td>
			</tr>
			<tr>
				<td>Product price:</td>
				<td><input type="text" id="product_price"></td>
			</tr>
			<tr>
				<td>Product Description:</td>
				<td><input type="text" id="product_desc"></td>
			</tr>
		</table>
		<br /> <br />
		<div>
			<button id="submit">Submit</button>
			&nbsp;&nbsp;
			<button id="back" onclick="window.location.href='/'">Back</button>
		</div>
	</div>
</body>
</html>