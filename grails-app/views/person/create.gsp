<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create User</title>
    <meta name="layout" content="navbarPerson" />
</head>

<body>
<content tag="Heading">
    <h2>Sign-Up Form</h2>
</content>
<content tag="myMainContent">
    <g:form action="save" controller="person" name="userForm" method="post" class="">
        <div class="form-group">
            <label for="firstName">First Name:</label>
            <g:textField name="firstName" placeholder="Enter your First Name here" class="form-control"></g:textField>
        </div>
        <div class="form-group">
            <label for="lastName">Last Name</label>
            <g:textField name="lastName" placeholder="Enter your Last Name here" class="form-control"></g:textField>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <g:textField name="email" placeholder="Enter your email here" class="form-control"></g:textField>
        </div>
        <div class="form-group">
            <label for="age">Age:</label>
            <g:textField name="age" placeholder="Enter your age here" class="form-control"></g:textField>
        </div>
        <div>
            <g:submitButton name="submit" value="Submit" class="btn btn-block btn-primary"></g:submitButton>
        </div>
    </g:form>
</content>
</body>
</html>