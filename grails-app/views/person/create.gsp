<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create User</title>
    <meta name="layout" content="navbarPerson" />
</head>

<body>
<content tag="heading">
    <h2>Sign-Up Form</h2>
</content>
<content tag="myMainContent">
    <g:form action="save" controller="person" name="userForm" method="post">
        <div class="form-group ${hasErrors(bean: errUser, field: 'firstName', 'has-error')}">
            <label for="firstName">First Name:</label>
            <g:textField name="firstName" placeholder="Enter your First Name here" class="form-control"
                         value="${errUser.firstName}"></g:textField>
            <g:renderErrors bean="${errUser}" field="firstName"/>
        </div>
        <div class="form-group ${hasErrors(bean: errUser, field: 'lastName', 'has-error')}">
            <label for="lastName">Last Name</label>
            <g:textField name="lastName" placeholder="Enter your Last Name here" class="form-control"
                         value="${errUser.lastName}"></g:textField>
            <g:renderErrors bean="${errUser}" field="lastName"/>
        </div>
        <div class="form-group ${hasErrors(bean: errUser, field: 'email', 'has-error')}">
            <label for="email">Email:</label>
            <g:textField name="email" placeholder="Enter your email here" class="form-control"
                         value="${errUser.email}"></g:textField>
            <g:renderErrors bean="${errUser}" field="email"/>
        </div>
        <div class="form-group ${hasErrors(bean: errUser, field: 'age', 'has-error')}">
            <label for="age">Age:</label>
            <g:textField name="age" placeholder="Enter your age here" class="form-control"
                         value="${errUser.age}"></g:textField>
            <g:renderErrors bean="${errUser}" field="age"/>
        </div>

        <g:submitButton name="submit" value="Submit" class="btn btn-block btn-primary"/>
    </g:form>
</content>
</body>
</html>