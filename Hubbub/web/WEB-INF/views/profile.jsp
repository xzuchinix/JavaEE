<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hubbub&trade; &raquo; Bub&trade; Profile</title>
        <%@include file="/WEB-INF/jspf/w3csshead.jspf"%>
    </head>
    <body>
        <div id="navbar" class="w3-bar" style="background-color:#92C4BE">
            <a class="w3-bar-item w3-button" href="main?action=timeline">Home</a>
            <a class="w3-bar-item w3-button" href="main?action=logout">Log Me Out</a>
        </div>
        <h1> About me! </h1>
                <div class="w3-container w3-half w3-margin-top">
        <form class="w3-container w3-card-4" method="POST" action="main">
            <input type="hidden" name="action" value="profileUpdate"/>
            <p>
                <label for="firstName">First Name: </label>
                <h2>${profile.firstName}</h2>
            </p>
            <p>
                <label for="lastName">Last Name: </label>
                <h2>${profile.lastName}</h2>    
            </p>
            <p>
                <label for="email">Email: </label>
                <h2>${profile.email}</h2>
            </p> 
            <p>
                <label for="timeZone">Time Zone: </label>
                <h2>${profile.timeZone}</h2>
            </p>
            <p>
            <label for="biography">My Bio: </label>
                <h2>${profile.biography}</h2>
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
            <script type="text/javascript">
            document.getElementById("content").focus();
            function charcountupdate(str) {
                var lng = str.length;
                document.getElementById("charcount").innerHTML = 512 - lng;
            }
            charcountupdate("");
    </script>
</html>