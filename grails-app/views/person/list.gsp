<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>List User</title>
    <meta name="layout" content="navbarPerson"/>
    <style>
        th {
            text-align: center;
        }
    </style>
</head>

<body>
    <content tag="heading">
        <h3>Session Record</h3>
    </content>
    <content tag="myMainContent">
        <table class="table table-bordered table-striped text-center">
            <thead>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Age</th>
                <th>Action</th>
            </thead>
            <g:each in="${allCreatedUsers}" var="users">
                <tr <g:if test="${users.age >= 100}">
                    class="danger"</g:if>>    <!-- <tr class="${users.age > 100 ? 'bg-danger': ''}"-->
                    <td><g:link controller="person" action="show" id="${users.id}">${users.id}</g:link></td>
                    <td>${users.firstName}</td>
                    <td>${users.lastName}</td>
                    <td>${users.email}</td>
                    <td>${users.age}</td>
                    <td><g:link controller="person" action="edit" id="${users.id}">edit &nbsp;</g:link><g:link
                            controller="person" action="delete" id="${users.id}">delete</g:link></td>
                </tr>
            </g:each>
        </table>
    </content>
</body>
</html>