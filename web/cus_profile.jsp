<%-- 
    Document   : profile
    Created on : Jun 11, 2024, 8:20:46 PM
    Author     : Norttie
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Profile</title>

        <link href="https://fonts.googleapis.com/css?family=Cairo:400,600,700&amp;display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&amp;display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400i,700i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ubuntu&amp;display=swap" rel="stylesheet">
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/slick.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/main-color03-green.css">
        <style>
            .no-border {
                border: none;
                outline: none;
                box-shadow: none;
            }
            .opa-05{
                opacity: 0.5;
            }
        </style>
    </head>
    <body>

        <c:if test="${sessionScope.acc == null}">
            <c:redirect url="login"/>
        </c:if>
        <!-- header -->
        <jsp:include page="./jsptemplate/header.jsp" />
        <!--end header-->
        <section style="margin: 45px 0px; " >
            <div class="container py-5">
                <div class="row form-log" style="border-right: 0.5px solid #eaeaea;
                     border-left: 1px solid #eaeaea;
                     min-height: 450px;">
                    <div class="col-lg-4">
                        <div class="card mb-4">
                            <div class="card-body text-center rounded-3">

                                <c:if test="${sessionScope.acc.avatar!=null}">
                                    <img src="./assets/image/${sessionScope.acc.avatar}" alt="avatar"
                                         class="rounded-circle img-fluid" style="width: 150px;height: 150px;border-radius: 50%;">

                                </c:if>
                                <c:if test="${sessionScope.acc.avatar==null}">
                                    <img src="./assets/image/Avatar.png" alt="avatar"
                                         class="rounded-circle img-fluid" style="width: 150px;height: 150px;border-radius: 50%;">
                                </c:if>
                                <h4 class="my-3 pro-name">${sessionScope.acc.displayname}</h4>
                                <p class="text-muted mb-1">${sessionScope.acc.description}</p>
                                <p class="text-muted mb-4">${sessionScope.acc.address}</p>
                            </div>
                            <div class="card-body text-center rounded-3">
                                <button id="profile-btn" class="profile-btn btn btn-def">My profile</button>
                                <button id="order-btn" class="order-btn btn btn-default2">My Order</button>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-8" id="myprofile">
                        <div class="card mb-4">
                            <div class="card-body rounded-3 ">
                                <form action="cus_profile" method="POST" id="myForm" enctype="multipart/form-data">
                                    <div class="row align-items-center">
                                        <input type="text" name="id" value="${sessionScope.acc.account_id}" hidden />
                                    </div>

                                    <div class="row align-items-center">
                                        <div class="col-sm-3">
                                            <p class="mb-0">Display Name</p>
                                        </div>
                                        <div class="col-sm-9">
                                            <input type="text" class="mb-0 no-border text-muted " name="displayname" value="${sessionScope.acc.displayname}" />
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row align-items-center">
                                        <div class="col-sm-3">
                                            <p class="mb-0">Description</p>
                                        </div>
                                        <div class="col-sm-9">
                                            <input type="text" class="mb-0 no-border text-muted " name="desc" value="${sessionScope.acc.description}" />
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row align-items-center">
                                        <div class="col-sm-3">
                                            <p class="mb-0">Email</p>
                                        </div>
                                        <div class="col-sm-9">
                                            <input type="text" class="mb-0 no-border text-muted " name="email" value="${sessionScope.acc.email}" />
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row align-items-center">
                                        <div class="col-sm-3">
                                            <p class="mb-0">Address</p>
                                        </div>
                                        <div class="col-sm-9">
                                            <input type="text" class="mb-0 no-border text-muted " name="address" value="${sessionScope.acc.address}" />
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row align-items-center">
                                        <div class="col-sm-3">
                                            <p class="mb-0">Avatar</p>
                                        </div>
                                        <div class="col-sm-9">
                                            <input type="file" class="mb-0 no-border text-muted " name="file" accept="image/*" />
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end">
                                        <button type="submit" class="btn btn-default col-1 ml-auto" id="submitBtn">Save</button>
                                    </div>
                                </form>
                            </div>


                        </div>

                    </div>
                    <div class="col-lg-8" id="myorder" style="display: none; overflow-y: scroll;
                         height: 450px;">
                        <table class="table order-list">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Status </th>
                                    <th scope="col">Total calories</th>
                                    <th scope="col">Total amount</th>
                                    <th scope="col">Order date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${lOrder}" var="i" varStatus="j">
                                    <tr data-href="OrderDetail?orderId=${i.orderId}" class="record-order">
                                        <th scope="row">${j.index+1}</th>
                                        <th scope="col" >${i.status}</th>
                                        <th scope="col">${i.totalCal}</th>
                                        <th scope="col">${i.ammount}</th>
                                        <th scope="col">${i.getCreateAt()}</th>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <!-- footer -->
        <jsp:include page="./jsptemplate/footer.jsp" />
        <!--end footer-->

        <script>
            document.getElementById('submitBtn').addEventListener('click', function () {
                document.getElementById('myForm').submit();
            });
            document.getElementById("profile-btn").addEventListener("click", function () {
                const profileSection = document.getElementById("myprofile");
                const orderSection = document.getElementById("myorder");

                // Hiển thị profile, ẩn order
                profileSection.style.display = "block";
                orderSection.style.display = "none";
            });

            document.getElementById("order-btn").addEventListener("click", function () {
                const profileSection = document.getElementById("myprofile");
                const orderSection = document.getElementById("myorder");

                // Hiển thị order, ẩn profile
                orderSection.style.display = "block";
                profileSection.style.display = "none";
            });
            document.addEventListener("DOMContentLoaded", function () {
                const rows = document.querySelectorAll("table tbody tr");
                rows.forEach((row) => {
                    row.addEventListener("click", function () {
                        const href = this.getAttribute("data-href");
                        if (href) {
                            window.location.href = href;
                        }
                    });
                });
            });

        </script>
         <script src="assets/js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.countdown.min.js"></script>
        <script src="assets/js/slick.min.js"></script>
        <script src="assets/js/biolife.framework.js"></script>
        <script src="assets/js/jquery.nicescroll.min.js"></script>
        <script src="assets/js/functions.js"></script>
    </body>
</html>
