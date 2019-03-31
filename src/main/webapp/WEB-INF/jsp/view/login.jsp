<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MyWebClassroom</title>
    </head>
    <body>
        <c:if test="${param.error != null}">
            <p><font color="red">Login failed.</font></p>
        </c:if>
        <c:if test="${param.logout != null}">
        <p><font color="green">You have logged out.</font></p></p>
        </c:if>
        <h2>MyWebClassroom Login</h2>
        <form action="login" method="POST">
            <label for="username">Username:</label><br/>
            <input type="text" id="username" name="username" /><br/><br/>
            <label for="password">Password:</label><br/>
            <input type="password" id="password" name="password" /><br/><br/>
            <input type="checkbox" id="remember-me" name="remember-me" />
            <label for="remember-me">Remember me</label><br/><br/>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <input type="submit" value="Log In"/> <a href="<c:url value="/classroom/registerAccount"/>">Register an Account</a>
        </form>
    </body>
</html>
