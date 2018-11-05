<%--
  Created by IntelliJ IDEA.
  User: Marko
  Date: 17.8.2018.
  Time: 17.39
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Korisnik</h1>

            <p class="lead">Detalji korisnika</p>
        </div>

        <form:form commandName="order" class="form-horizaontal">

        <h3>Adresa za slanje</h3>

        <div class="form-group">
            <label for="shippingStreet">Ulica</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Broj</label>
            <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">Grad</label>
            <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingState">Okrug</label>
            <form:input path="cart.customer.shippingAddress.state" id="shippingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Drzava</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Postanski broj</label>
            <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br><br>
        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Nazad</button>
        <input type="submit" value="Dalje" class="btn btn-default" name="_eventId_shippingDetailCollected" />
        <button class="btn btn-default" name="_eventId_cancel">Otkazi</button>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>

