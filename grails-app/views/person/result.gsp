<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Search Result</title>
    <meta name="layout" content="navbarPerson"/>
    <style>
        th {
            text-align: center;
        }
        .form {
            padding-top: 15px;
        }
    </style>
</head>

<body>
    <content tag="heading">
        <h3>Search Result</h3>
    </content>
    <content tag="myMainContent">
        <table class="table table-bordered table-striped text-center">
            <thead>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Age</th>
            </thead>
            <g:each in="${mySearchedPerson}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.email}</td>
                    <td>${user.age}</td>
                </tr>
            </g:each>
        </table>

        <g:form controller="person" action="search" class="form">
            <button type="submit" class="btn btn-primary btn-block">Go Back to Search</button>
        </g:form>
    </content>
</body>
</html>