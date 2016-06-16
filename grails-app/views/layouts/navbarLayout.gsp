<html>
<head>
    <asset:stylesheet href="font-awesome/css/font-awesome.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="bootstrapcdn.min.js"/>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:stylesheet href="bootstrapcdn.min.css"/>
    <g:layoutHead/>
    <style>
    .brand {
        color: #c0a16b;
    }
    .navbar-inverse .navbar-nav>.active>a {
        background-color: #c0a16b;
        border-radius: 15px;
    }
    </style>
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <a href="#" class="navbar-brand"> <p class="brand"><b>Hang Out </b><i class="fa fa-angellist"></i></p></a>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-links" id="navbar-collapse-button">
                    <span class="sr-only">ToggleNavigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="navbar-links">
                <ul class="nav navbar-nav navbar-right">
                    <li class="${actionName.equals("createUser")  ? 'active' : ''}"><g:link controller="session" action="createUser">Create User</g:link></li>
                    <li class="${actionName.equals("showUser")  ? 'active' : ''}"><g:link controller="session" action="showUser">Show User</g:link> </li>
                    <li class="${actionName.equals("listUser") ? 'active' : ''}"><g:link controller="session" action="listUser">List Users</g:link> </li>
                </ul>
            </div>
        </div>
    </nav>
    <g:layoutBody/>
</body>
</html>