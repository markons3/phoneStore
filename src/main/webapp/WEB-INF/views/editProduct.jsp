<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Izmenite uredjaj</h1>

            <p class="lead">Izmenite informacije uredjaja:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post"
                   commandName="product" enctype="multipart/form-data">
        <form:hidden path="productId" value="${product.productId}" />

        <div class="form-group">
            <label for="name">Ime</label>
            <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
        </div>

        <div class="form-group">
            <label for="category">Kategorija</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Novo" />Novo</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Polovno" />Polovno</label>
        </div>

        <div class="form-group">
            <label for="description">Opis</label>
            <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
        </div>

        <div class="form-group">
            <label for="price">Cena</label>
            <form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}"/>
        </div>

            <div class="form-group">
                <label for="unitInStock">Komada na stanju</label>
                <form:input path="productInStock" id="unitInStock" class="form-Control" value="${product.productInStock}"/>
            </div>

            <div class="form-group">
                <label for="manufacturer">Proizvodjac</label>
                <form:input path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}"/>
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Uploaduj Sliku</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
            </div>

            <br><br>
            <input type="submit" value="Potvrdi" class="btn btn-default">
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Otkazi</a>
        </form:form>