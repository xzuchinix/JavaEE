<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hubbub&trade; &raquo; Bub&trade; Profile</title>
        <%@include file="/WEB-INF/jspf/w3csshead.jspf"%>
    </head>
    <body>
        <div id="navbar" class="w3-bar" style="background-color:#92C4BE">
            <a class="w3-bar-tiem w3-button" href="main?action=timeline">Home</a>
            <a class="w3-bar-item w3-button" href="main?action=post">Add a Blurb&trade;</a>
        </div>
        <h1> About me! </h1>
                <div class="w3-container w3-half w3-margin-top">
        <form class="w3-container w3-card-4" method="POST" action="main">
            <input type="hidden" name="action" value="login"/>
            <p>
                ${firstName}
                <input class="w3-input" name="firstName" type="text" id="firstName"
                       style="width:90%"/>
                <label for="firstName">First Name: </label>
            </p>
            <p>
                <input class="w3-input" name="lastName" id="lastName"
                       type="lastName" style="width:90%"/>
                <label for="lastName">Last Name: </label>
            </p>
            <p>
                <input class="w3-input" name="email" id="email"
                       type="email" style="width:90%"/>
                <label for="email">Email: </label>
            </p> 
            <p>
                <input class="w3-input" name="timeZone" id="timeZone"
                       type="timeZone" style="width:90%"/>
                <label for="timeZone">Time Zone: </label>
            </p>
            <p>
                <input class="w3-input" name="biography" id="biography"
                       type="biography" style="width:90%"/>
                <label for="biography">My Bio: </label>
            </p>
            <p>
                <input class="w3-input" name="avatar" id="avatar"
                       type="avatar" style="width:90%"/>
                <label for="avatar">My Bio: </label>
            </p>
            <p>
                <button class="w3-button w3-section w3-ripple"
                        style="background-color:#92C4BE">
                    Update my profile!
                </button>
            </p>
        </form>
    </div>
    </body>
    <script type="text/javascript">
        document.getElementById("user").focus();
    </script>
</html>