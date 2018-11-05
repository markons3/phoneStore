<%--
  Created by IntelliJ IDEA.
  User: Marko
  Date: 17.8.2018.
  Time: 17.36
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

        <h3>Osnovni podaci</h3>

        <div class="form-group">
            <label for="name">Ime</label>
            <form:input path="cart.customer.customerName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="cart.customer.customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Telefon</label>
            <form:input path="cart.customer.customerPhone" id="phone" class="form-Control"/>
        </div>

        <h3>Adresa racuna</h3>

        <div class="form-group">
            <label for="billingStreet">Ulica</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Broj</label>
            <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCity">Grad</label>
            <form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingState">Okrug</label>
            <form:input path="cart.customer.billingAddress.state" id="billingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCountry">Drzava</label>
            <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Postanski broj</label>
            <form:input path="cart.customer.billingAddress.zipCode" id="billingZip" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br><br>
        <input type="submit" value="Dalje" class="btn btn-default" name="_eventId_customerInfoCollected" />
        <button class="btn btn-default" name="_eventId_cancel">Otkazi</button>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
