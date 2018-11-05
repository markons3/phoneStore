<%--
  Created by IntelliJ IDEA.
  User: Marko
  Date: 17.8.2018.
  Time: 17.47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1> Greska</h1>
                </div>
            </div>
        </section>

        <section class="container">
            <p>
                <a href="<spring:url value="/product/productList/all" />" class="btn btn-default">Uredjaji</a>
            </p>
        </section>

    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>