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
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="bootstrapcdn.min.js"/>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:stylesheet href="bootstrapcdn.min.css"/>
</head>

<body>
    <g:render template="/templates/myNavbar" model="[myCurrentPage: 'list']"></g:render>
    <div class="container">
        <h3>Session Record</h3>
        <hr>
        <table class="table table-bordered table-striped">
            <thead>
                <th>S.No.</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Age</th>
            </thead>
            <g:each in="${allCreatedUsers}" var="users">
                <tr <g:if test="${users.myAge >= 100}">
                    class="danger"
                    </g:if>>    <!-- <tr class="${users.myAge > 100 ? 'bg-danger': ''}"-->
                    <td>${users.id}</td>
                    <td>${users.myFirstName}</td>
                    <td>${users.myLastName}</td>
                    <td>${users.myEmail}</td>
                    <td>${users.myAge}</td>
                </tr>
            </g:each>
        </table>
    </div>
</body>
</html>