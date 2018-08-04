<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
 <head>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
 	<title>Produkty</title>
 </head>
 <body>
 	<section>
		<div class="jumbotron">
			<a href="<c:url value="/j_spring_security_logout" />" class="btn btn-danger btn-mini pull-right">
 			Wyloguj się
			</a>
			<div class="container">
				<h1>Produkty</h1>
				<p>Dodaj produkty</p>
			</div>
		</div>
 	</section>
 	<section class="container">
		<form:form modelAttribute="newProduct" class="form-horizontal">
			<fieldset>
				<legend>Dodaj nowy produkt</legend>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="productId">Id</label>
						<div class="col-lg-10">
							<form:input id="productId" path="productId" type="text" class="form:input-large"/>
						</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">Nazwa</label>
						<div class="col-lg-10">
							<form:input id="name" path="name" type="text" class="form:input-large"/>
						</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="unitPrice">Cena</label>
						<div class="col-lg-10">
							<form:input id="unitPrice" path="unitPrice" type="text" class="form:input-large"/>
						</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="manufacturer">Producent</label>
						<div class="col-lg-10">
							<form:input id="manufacturer" path="manufacturer" type="text" class="form:input-large"/>
						</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="category">Kategoria</label>
						<div class="col-lg-10">
							<form:input id="category" path="category" type="text" class="form:input-large"/>
						</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="unitsInStock">Ilość w sklepie</label>
						<div class="col-lg-10">
							<form:input id="unitsInStock" path="unitsInStock" type="text" class="form:input-large"/>
						</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="unitsInOrder">Ilość w zamówieniu</label>
						<div class="col-lg-10">
							
						</div>
				</div>

 
				<div class="form-group">
					<label class="control-label col-lg-2" for="description">Opis</label>
						<div class="col-lg-10">
							<form:textarea id="description" path="description" rows ="2"/>
						</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="discontinued">Wycofany</label>
						<div class="col-lg-10">
						
						</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="condition">Stan</label>
						<div class="col-lg-10">
							<form:radiobutton path="condition" value="New" />Nowy
							<form:radiobutton path="condition" value="Old" />Używany
							<form:radiobutton path="condition" value="Refurbished"/>Odnowiony
						</div>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Dodaj"/>
					</div>
				</div>
			</fieldset>
 		</form:form>
 	</section>
</body>
</html>