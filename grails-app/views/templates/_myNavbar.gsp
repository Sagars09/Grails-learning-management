<html>
<head>
    <style>
        .brand {
            color: #c0a16b;
        }
        .navbar-inverse .navbar-nav>.active>a {
            background-color: #c0a16b;
            border-radius: 25px;
        }
    </style>
</head>
<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <a href="#" class="navbar-brand"> <p class="brand">Hang Out</p></a>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-links" id="navbar-collapse-button">
                <span class="sr-only">ToggleNavigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="navbar-links">
            <ul class="nav navbar-nav navbar-right">
                <li class="${myCurrentPage.equals("create")  ? 'active' : ''}"><g:link controller="session" action="createUser">Create User</g:link></li>
                <li class="${myCurrentPage.equals("show")  ? 'active' : ''}"><g:link controller="session" action="showUser">Show User</g:link> </li>
                <li class="${myCurrentPage.equals("list") ? 'active' : ''}"><g:link controller="session" action="listUser">List Users</g:link> </li>
            </ul>
        </div>
    </div>
</nav>
</html>