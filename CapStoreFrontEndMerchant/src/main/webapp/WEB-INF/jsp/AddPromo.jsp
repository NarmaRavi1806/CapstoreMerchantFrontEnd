<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Promos</title>
</head>
<body>
	<div class="header-container">
		<div class="site-name" style="color: Red; font-size: 50px">
			<b>CapStore</b>&nbsp; &nbsp; <img
				src="C:\Users\bsruthi\Desktop\capstore.png" width="125" height="125" />
		</div>
		<div class="header-bar" align="Right">
			<j:if test="${pageContext.request.userPrincipal.name != null}">
        Hello Merchant ${merchant.merchantName}  &nbsp;|&nbsp;
           <a href="${pageContext.request.contextPath}/logout"
					onclick="alertName()">Logout</a>
				<br>
				<br>
				<script type="text/javascript">
					function alertName() {
						alert("Logged out Successfully");
					}
				</script>

				<a href="Home.jsp""${pageContext.request.contextPath}/home">Home
				</a> &nbsp;|&nbsp;
             <a href="ProductManagement.jsp""${pageContext.request.contextPath}/productManagement">Product
					Management </a>&nbsp;|&nbsp;
             <a href="${pageContext.request.contextPath}/order">Order
				</a>&nbsp;|&nbsp;
            <a href="MessagesPage.jsp""${pageContext.request.contextPath}/contact">Messages
				</a>&nbsp;|&nbsp;
			<a href="DandP.jsp""${pageContext.request.contextPath}/discounts&promos">Discounts
					& Promos </a>
					</j:if>
					</div>
					
		</div>
		<form action="/addPromo" method="post" modelAttribute="promo" enctype="multipart/form-data">
		<div>
			<table>
			<tr><h2>Add Promo</h2></tr>
				<tr>
					<td>Promo code:</td>
					<td><input type="text" name="promoCode" required /></td>
				</tr>

				<tr>
					<td>Discount Percent:</td>
					<td><input type="text" name="discount" required/>%</td>
				</tr>

				<tr>
					<td>Time Period :</td>
					<td><input type="text" name="timePeriod" required/></td>
				</tr>
			</table>
			<br>
			<button type="submit" onclick="alertBox()">Add PromoCode</button>
			&nbsp; &nbsp;

		</div>
		</form>
		<script type="text/javascript">
		function alertBox(){
			var promo_code=document.addPromo.promo_code.value;  
			var discount_Percent=document.addPromo.discount_Percent.value; 
			var promo_time=document.addPromo.promo_time.value;
			if(((promo_code==null || promo_code=="") && (discount_Percent==null || discount_Percent=="") && (promo_time==null || promo_time=="") ))
			{
			
			}
		else{
			alert("Promo Added Successfully");
		}
			
		}
		
		</script>
	
		
</body>
</html>