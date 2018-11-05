<%--
  Created by IntelliJ IDEA.
  User: Marko
  Date: 22.7.2018.
  Time: 14.14
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide"
                 src="<c:url value="/resources/images/back1.png" />"
                 alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Dobrodosli na Maretov's PhoneStore</h1>

                    <p>Ovde mozete pronaci polovne i nove telefone!</p>

                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide"
                 src="<c:url value="/resources/images/back2.png" />"
                 alt="Second slide">
            <div class="container">
                <br><br>
                <div class="carousel-caption">
                    <h1>Ko danas moze bez telefona</h1>

                    <p>Telefoni nam pomazu u svakodnevom zivotu!</p>

                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide"
                 src="<c:url value="/resources/images/back3.png" />"
                 alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Treba ti telefon</h1>

                    <p>Kod nas ces naci sve sto ti treba!</p>

                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Prethodno</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Sledece</span>
    </a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row row-eq-height">
        <div class="col-lg-6 text-center">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Novo" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/new.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Novi Telefoni</h2>
            <p>Najpovoljiniji novi telefoni</p>

        </div>

        <div class="row row-eq-height">
            <div class="col-lg-6 text-center">
                <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Polovno" />"
                   role="button">
                    <img class="img-circle" src="<c:url value="/resources/images/used.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

                <h2>Polovni telefoni</h2>
                <p>Najveca ponuda polovnih telefona</p>

            </div>


        </div>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
