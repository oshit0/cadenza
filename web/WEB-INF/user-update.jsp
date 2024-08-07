<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit User</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/users.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="preconnect" href="https://rsms.me/">
    <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
</head>
<body>
    <%@include file="admin-navbar.jsp" %>
    <!-- Update form -->
    <div class="container-fluid">
        <main role="main" class="col-md-12 ml-sm-auto col-lg-12 px-md-4 pt-4">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="form-row">
                        <div class="form-group col-md-12 text-left mb-3">
                            <form method="post" action="${pageContext.request.contextPath}/user/edit" class="needs-validation" novalidate>
                                <c:forEach items="${userDetails}" var="user">
                                    <div class="mb-1 row">
                                        <div class="col-sm-9 input-group">
                                            <label for="userId" class="col-sm-3 col-form-label">User ID</label>
                                            <span class="input-group-text" id="inputGroupPrepend"><i class="fa-solid fa-lock"></i></span>
                                            <input type="text" class="form-control form-control-sm bg-light" id="userId" name="userId" value="${user.userId}" aria-label="Disabled" readonly required>
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="password" class="col-sm-3 col-form-label">Password</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="password" name="password" value="" placeholder="Only fill up if changing password">
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="firstName" class="col-sm-3 col-form-label">First Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="firstName" name="firstName" value="${user.firstName}" required>
                                            <div class="invalid-feedback">
                                                Please provide a first name.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="middleName" class="col-sm-3 col-form-label">Middle Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="middleName" name="middleName" placeholder="Optional" value="${user.middleName}">
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="lastName" class="col-sm-3 col-form-label">Last Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="lastName" name="lastName" value="${user.lastName}" required>
                                            <div class="invalid-feedback">
                                                Please provide a last name.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="completeAddress" class="col-sm-3 col-form-label">Complete Address</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="completeAddress" name="completeAddress" value="${user.completeAddress}" required>
                                            <div class="invalid-feedback">
                                                Please provide a complete address.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="birthday" class="col-sm-3 col-form-label">Birthday</label>
                                        <div class="col-sm-9">
                                            <input type="date" class="form-control form-control-sm" id="birthday" name="birthday" value="${user.birthday}">
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="mobileNumber" class="col-sm-3 col-form-label">Mobile Number</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="mobileNumber" name="mobileNumber" placeholder="+63" value="${user.mobileNumber}">
                                        </div>
                                    </div>
                                    <div class="form-group mb-1 row">
                                        <label for="accountStatus" class="col-sm-3 col-form-label">Account Status</label>
                                        <div class="col-sm-9">
                                            <select class="form-select form-select-sm" id="accountStatus" name="accountStatus" required>
                                                <c:choose>
                                                    <c:when test="${user.accountStatus == 'Valid'}">
                                                        <option value="Valid" selected>Valid</option>
                                                        <option value="Invalid">Invalid</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="Invalid" selected>Invalid</option>
                                                        <option value="Valid">Valid</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="loginStatus" class="col-sm-3 col-form-label">Login Status</label>
                                        <div class="col-sm-9">
                                            <select class="form-select form-select-sm" id="loginStatus" name="loginStatus" required>
                                                <c:choose>
                                                    <c:when test="${user.loginStatus == 'Online'}">
                                                        <option value="Online">Online</option>
                                                        <option value="Offline" selected>Offline</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="Offline">Offline</option>
                                                        <option value="Online" selected>Online</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="userType" class="col-sm-3 col-form-label">User Type</label>
                                        <div class="col-sm-9">
                                            <select class="form-select form-select-sm" id="userType" name="userType" required>
                                                <c:choose>
                                                    <c:when test="${user.userType == 'Customer'}">
                                                        <option value="Customer" selected>Customer</option>
                                                        <option value="Administrator">Administrator</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="Administrator" selected>Administrator</option>
                                                        <option value="Customer">Customer</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </select>
                                        </div>
                                    </div>
                                </c:forEach>
                                <button type="submit" class="btn btn-dark submit" name="editUser">Save</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

    <!-- Bootstrap JS and Popper.js (required for dropdowns) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>

    <!-- Bootstrap Form Validation Script -->
    <script>
        // Bootstrap form validation
        (function () {
            'use strict'
            var forms = document.querySelectorAll('.needs-validation')
            Array.prototype.slice.call(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }
                        form.classList.add('was-validated')
                    }, false)
                })
        })()
    </script>
</body>
</html>
