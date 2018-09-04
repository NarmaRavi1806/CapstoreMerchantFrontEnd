<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
</head>
<body>
		<div class="site-name" style="color: Red; font-size: 50px">
			<b>CapStore</b>&nbsp; &nbsp; <img
				src="C:\Users\bsruthi\Desktop\capstore.png" width="125" height="125" />
		</div>

		<div class="header-bar" align="Right">
			
        Hello Merchant ${merchant.merchantName}&nbsp;|&nbsp;
           <a href="${pageContext.request.contextPath}/logout"
					onclick="alertName()">Logout</a>
				<br>
				<br>
				<script type="text/javascript">
					function alertName() {
						alert("Logged out Successfully");
					}
				</script>
				<a href="Home.jsp">Home
				</a> &nbsp;|&nbsp;
             <a href="ProductManagement.jsp">Product
					Management </a>&nbsp;|&nbsp;
             <a href=>Order
				</a>&nbsp;|&nbsp;
            <a href="MessagesPage.jsp">Messages
				</a>&nbsp;|&nbsp;
			<a href="DandP.jsp">Discounts
					& Promos </a>
		</div> 
		<br>
		<br>
		<br>
		<form method="get">
		<h1>
		productId:${product.productId}<br>
		productName:${product.productName}<br>
		productPrice:${product.price}<br>
		quantity:${product.quantity}<br>
		 productCategory:${product.category}<br>
		productPromoCode:${product.promoCode}<br>
		productDiscount:${product.discount}<br>
		 productImage:${product.imageId}<br>
		productFeedback:${product.feedbackProduct} <br>
		</h1>
	</form>
</body>
</html>