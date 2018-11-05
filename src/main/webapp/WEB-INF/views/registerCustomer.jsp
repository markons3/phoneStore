<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Registrovanje korisnika</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">

        <h3>Osnovne informacije</h3>


        <div class="form-group">
            <label for="name">Ime korisnika</label><form:errors path="customerName" cssStyle="color: #ff0000"/>
            <form:input path="customerName" id="name" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label><span style="color: #ff0000">${emailMsg}</span><form:errors
                path="customerEmail" cssStyle="color: #ff0000"/>
            <form:input path="customerEmail" id="email" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="phone">Telefon</label>
            <form:input path="customerPhone" id="phone" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="username">Username</label><span style="color: #ff0000">${usernameMsg}</span><form:errors
                path="username" cssStyle="color: #ff0000"/>
            <form:input path="username" id="username" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="password">Password</label><form:errors path="password" cssStyle="color: #ff0000"/>
            <form:input type="password" path="password" id="password" class="form-control"/>
        </div>


        <h3>Adresa za naplatu</h3>

        <div class="form-group">
            <label for="billingStreet">Ime Ulice</label>
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Broj</label>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="billingCity">Grad</label>
            <form:input path="billingAddress.city" id="billingCity" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="billingState">Okrug</label>
            <form:input path="billingAddress.state" id="billingState" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="billingCountry">Drzava</label>
            <form:input path="billingAddress.country" id="billingCountry" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Postanski kod</label>
            <form:input path="billingAddress.zipCode" id="billingZip" class="form-control"/>
        </div>


        <h3>Adresa za slanje</h3>

        <div class="form-group">
            <label for="shippingStreet">Ime Ulice</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Broj</label>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">Grad</label>
            <form:input path="shippingAddress.city" id="shippingCity" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="shippingState">Okrug</label>
            <form:input path="shippingAddress.state" id="shippingState" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Drzava</label>
            <form:input path="shippingAddress.country" id="shippingCountry" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Postanski kod</label>
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-control"/>
        </div>


        <br><br>
        <input type="submit" value="Potvrdi" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Otkazi</a>
        </form:form>


<%@include file="/WEB-INF/views/template/footer.jsp" %>