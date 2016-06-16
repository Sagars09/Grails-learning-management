<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 14/6/16
  Time: 7:03 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>List User</title>
    <meta name="layout" content="navbarLayout"/>
</head>

<body>
    <content tag="listHeading">
        <h3>Session Record</h3>
    </content>
    <content tag="listTable">
        <table class="table table-bordered table-striped">
            <thead>
                <th>S.No.</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Age</th>
            </thead>
            <g:each in="${allCreatedUsers}" var="users">
                <tr <g:if test="${users.age >= 100}">
                    class="danger"
                    </g:if>>    <!-- <tr class="${users.age > 100 ? 'bg-danger': ''}"-->
                    <td>${users.id}</td>
                    <td>${users.firstName}</td>
                    <td>${users.lastName}</td>
                    <td>${users.email}</td>
                    <td>${users.age}</td>
                </tr>
            </g:each>
        </table>
    </content>
</body>
</html>