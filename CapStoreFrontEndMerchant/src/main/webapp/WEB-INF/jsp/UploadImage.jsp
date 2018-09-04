<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>upload image</title>
</head>
<body>
	<form action="/uploadingimage" method="post" modelAttribute="image"
		enctype="multipart/form-data">

		<h1>Upload Image</h1>

		<table width="30%">

			<tr>
				<td><b>Product Id</b></td>
				<td><input type="text" size=25 name="productId" required></td>
			</tr>

			<tr>
				<td><b>Image Id</b></td>
				<td><input type="text" size=25 name="imageId" required></td>
			</tr>

			<tr>
				<td><b>Image Name</b></td>
				<td><input type="text" size=25 name="imageName" required></td>
			</tr>

			<tr>
				<td><b>Image Type</b></td>
				<td><input type="text" size=25 name="imageType"></td>
			</tr>


			<tr>
				<td><b>Image Path</b></td>
				<td><input type="text" size=25 name="imagePath"></td>
			</tr>


		</table>
		<br>
		<br> <input type="submit" value="Submit">
	</form>
</body>
</html>