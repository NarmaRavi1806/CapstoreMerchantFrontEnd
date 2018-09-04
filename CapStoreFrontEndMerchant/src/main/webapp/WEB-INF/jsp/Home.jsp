<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CapStore</title>
</head>
<body>
	<div class="header-container">
		<div class="site-name" style="color: Red; font-size: 50px">
			<b>CapStore</b>&nbsp; &nbsp; <img
				src="C:\Users\bsruthi\Desktop\capstore.png" width="125" height="125" />
		</div>
		<div class="header-bar" align="Right">
			<j:if test="${pageContext.request.userPrincipal.name != null}">
        Hello Merchant${merchant.merchantName}  &nbsp;|&nbsp;
           <a href=""
					"${pageContext.request.contextPath}/logout"
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
             <a href="${pageContext.request.contextPath}/order">Order
				</a>&nbsp;|&nbsp;
            <a href="MessagesPage.jsp">Messages
				</a>&nbsp;|&nbsp;
			<a href="DandP.jsp">Discounts
					& Promos </a>

			</j:if>
			<br> <br> <br> <br>
		</div>
		<table>
		<tr><td>Merchant Id</td><td>:${merchant.merchantId}</td></tr>
		<tr><td>Merchant Name</td><td>:${merchant.merchantName}</td></tr>
		<tr><td>Phone No</td><td>:${merchant.phoneNo}</td></tr>
		<tr><td>Merchant Type</td><td>:${merchant.type}</td></tr>
		</table>
	</div>
</body>
</html>