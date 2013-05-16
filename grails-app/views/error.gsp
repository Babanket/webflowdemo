<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type"
    content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
    <title>Build Contact - Error</title>
</head>
<body>
    <div class="body">
        <h1>Build Contact - Error</h1>
        <g:if test="${message}">
            <div class="message">${message}</div>
        </g:if>
        <g:form action="build">
            <div class="dialog">
                <p>Sorry, but the system has reported an unrecoverable error.</p>
            </div>
            <div class="buttons">
                <span class="button">
                    <g:submitButton class="confirm" name="confirm" value="OK" />
                </span>
            </div>
        </g:form>
    </div>
</body>
</html>