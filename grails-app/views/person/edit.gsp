<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit User</title>
    <meta name="layout" content="navbarPerson" />
</head>

<body>
    <content tag="heading">
        <h2>Edit Form</h2>
    </content>

    <content tag="myMainContent">
        <g:form action="update" controller="person" name="userForm" method="post">
            <input type="hidden" name="id" id="id" value="${editUser.id}">
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <g:textField name="firstName" placeholder="Enter your First Name here" class="form-control"
                             value="${editUser.firstName}"
                ></g:textField>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name</label>
                <g:textField name="lastName" placeholder="Enter your Last Name here" class="form-control"
                             value="${editUser.lastName}"
                ></g:textField>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <g:textField name="email" placeholder="Enter your email here" class="form-control"
                             value="${editUser.email}"></g:textField>
            </div>
            <div class="form-group">
                <label for="age">Age:</label>
                <g:textField name="age" placeholder="Enter your age here" class="form-control"
                             value="${editUser.age}"></g:textField>
            </div>
            <div>
                <g:submitButton name="submit" value="Submit" class="btn btn-block btn-primary"></g:submitButton>
            </div>
        </g:form>
    </content>
</body>
</html>