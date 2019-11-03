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
            <input type="hidden" name="action" value="profile"/>
            <p>
            <h2>${firstName}</h2>
                <input class="w3-input" name="firstName" type="text" id="firstName"
                       style="width:90%"/>
                <label for="firstName">First Name: </label>
            </p>
            <p>
            <h2>${lastName}</h2>    
                <input class="w3-input" name="lastName" id="lastName"
                       type="lastName" style="width:90%"/>
                <label for="lastName">Last Name: </label>
            </p>
            <p>
                <h2>${email}</h2>
                <input class="w3-input" name="email" id="email"
                       type="email" style="width:90%"/>
                <label for="email">Email: </label>
            </p> 
            <p>
                <h2>${timeZone}</h2>
                <input class="w3-input" name="timeZone" id="timeZone"
                       type="timeZone" style="width:90%"/>
                <label for="timeZone">Time Zone: </label>
            </p>
            <p>
            <label for="biography">My Bio: </label>
                <h2>${biography}</h2>
                <form class="w3-container w3-card-4 w3-margin" method="POST" action="main">
                <input type="hidden" name="action" value="post"/>
                <p>
                    <textarea id="content" style="max-width:90%; max-height:90%"
                            rows="3" cols="60"
                            onkeyup="charcountupdate(this.value)"
                            name="content">${param.content}</textarea><br/>
                    <label for="content">
                        Characters: <span id="charcount"></span> left
                    </label>
                </p>

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