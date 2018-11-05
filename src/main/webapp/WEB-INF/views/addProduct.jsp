<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Dodaj produkt</h1>

            <p class="lead">Popunite informacije produkta</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post"
                   commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Ime</label> <form:errors path="productName" cssStyle="color: #ff0000;" />
            <form:input path="productName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Novo" />Novo</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Polovno" />Polovno</label>
        </div>

        <div class="form-group">
            <label for="description">Opis</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="price">Cena</label>  <form:errors path="productPrice" cssStyle="color: #ff0000;" />
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="productInStock">Komada na stanju</label> <form:errors path="productInStock" cssStyle="color: #ff0000"/>
            <form:input path="productInStock" id="productInStock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Proizvodjac</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Dodaj Slike</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>
        <input type="submit" value="Potvrdi" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Otkazi</a>
        </form:form>


<%@include file="/WEB-INF/views/template/footer.jsp" %>