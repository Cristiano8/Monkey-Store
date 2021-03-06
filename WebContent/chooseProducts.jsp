<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<f:view>
	<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Products</title>
	</head>
	<body>
		<h1>Products</h1>
		<h:form>
			<table>
				<tr>
					<th>Name</th>
					<th>Price</th>
				</tr>
				<c:forEach var="product" items="#{customerSession.products}">
					<tr>
						<td><h:commandLink value="#{product.name}"
								action="#{orderLineController.findProductById}">
								<f:param name="productId" value="#{product.id}" />
							</h:commandLink></td>
						<td>${product.price}</td>
					</tr>
				</c:forEach>
			</table>
			<div>
				<h:commandButton value="End Order"
					action="#{orderController.endOrder}"></h:commandButton>
			</div>

			<div>
				<h:commandButton value="Cancel Order"
					action="#{orderController.cancelOrder}"></h:commandButton>
			</div>
		</h:form>

	</body>
</f:view>
</html>