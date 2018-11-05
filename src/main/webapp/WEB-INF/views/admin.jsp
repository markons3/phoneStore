<%--
  Created by IntelliJ IDEA.
  User: Le
  Date: 1/7/2016
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>

<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Admin stranica</h1>

            <p class="lead">Ovo je admin stranica</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Welcome: ${pageContext.request.userPrincipal.name} | <a href="<c:url
                value="/j_spring_security_logout" />">Izlogujte se</a>
            </h2>
        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory" />" >Inventar produkata</a>
        </h3>

        <p>Here you can view, check and modify the product inventory!</p>

        <br><br>

        <h3>
            <a href="<c:url value="/admin/customer" />" >Registrovani korisnici</a>
        </h3>

        <p>Ovde mozete pogledati detalje svih registrovanih korisnika!</p>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>

