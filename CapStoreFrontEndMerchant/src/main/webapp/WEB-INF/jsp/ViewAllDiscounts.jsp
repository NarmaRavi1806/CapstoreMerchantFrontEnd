<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Discounts</title>
</head>
<body>
<form action="">
		<div class="site-name" style="color: Red; font-size: 50px">
			<b>CapStore</b>&nbsp; &nbsp; <img
				src="C:\Users\bsruthi\Desktop\capstore.png" width="125" height="125" />
		</div>

		<div class="header-bar" align="Right">
			<j:if test="${pageContext.request.userPrincipal.name != null}">
        Hello Merchant  &nbsp;|&nbsp;
           <a href="""${pageContext.request.contextPath}/logout"
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
		<br> <br>
		<h2>All Discounts</h2>
		
		
		<div>
				<br> <br>
				<table border="1" style="width: 50%">
					<tr>
						<th>Discount Id</th>
						<th>Discount Percent</th>
						<th>Time Period</th>
					</tr>
					<c:forEach items="${discount}" var="discount">
						<tr>
							<td>${discount.discountId}</td>
							<td>${discount.discountPercent}</td>
							<td>${discount.timePeriod}</td>

						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		
		</div>
		
		</form>
		
</body>
</html>