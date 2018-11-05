<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<script>
    $(document).ready(function () {

        $('.table').DataTable({
            "lengthMenu": [[3, 5, 10, -1], [3, 5, 10, "Sve"]]
        });
    });

</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Inventar uredjaja</h1>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Slika</th>
                <th>Proizvodjac</th>
                <th>Ime</th>
                <th>Kategorija</th>
                <th>Cena</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:4cm"/></td>
                    <td>${product.productManufacturer}</td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                        <span class="glyphicon glyphicon-info-sign"></span></a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />">
                            <span class="glyphicon glyphicon-remove"></span></a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-pencil"></span></a></td>
                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Dodaj produkt</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
