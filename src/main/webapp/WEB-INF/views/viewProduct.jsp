<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Karakteristike telefona</h1>

            <p class="lead">Ovde mozete pogledati osobine telefona </p>
        </div>

        <div class="container" ng-controller="cartCtrl" ng-app="cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                         style="width:100%"/>
                </div>

                <div class="col-md-5">
                    <h3><strong>Model</strong> : ${product.productName}</h3>
                    <h3>
                        <strong>Proizvodjac</strong> : ${product.productManufacturer}
                    </h3>
                    <h5>
                        <strong>Opis</strong> : ${product.productDescription}
                    </h5>
                    <h4>
                        <strong>Kategorija</strong> : ${product.productCategory}
                    </h4>
                    <h4><strong>Cena</strong> : ${product.productPrice} USD</h4>

                    <br>
                    <c:set var="role" scope="page" value="${param.role}"/>
                    <c:set var="url" scope="page" value="/product/productList/all"/>
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory/"/>
                    </c:if>

                    <p ng-controller="cartCtrl">
                        <a href="<c:url value="${url}" />" class="btn btn-default">Nazad</a>
                        <a href="#" class="btn btn-warning btn-large"
                           ng-click="addToCart('${product.productId}')"><span
                                class="glyphicon glyphicon-shopping-cart"></span> Dodaj u korpu</a>
                        <a href="<spring:url value="/customer/cart" />"
                           class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span> Korpa</a>
                    </p>


                </div>
            </div>
        </div>

        <script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>