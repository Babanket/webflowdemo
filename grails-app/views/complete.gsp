<html>
<head>
    <meta http-equiv="Content-Type"
    content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
    <title>Build Contact - Complete</title>
</head>
<body>
    <div class="body">
        <h1>Build Contact - Complete</h1>
        <g:if test="${message}">
            <div class="message">${message}</div>
        </g:if>
        <g:form action="build">
            <div class="dialog">
                <table>
                <tbody>
                    <tr class="prop">
                        <td valign="top" class="name">First Name:</td>
                        <td valign="top" class="value">${contact.firstName}</td>
                    </tr>
                    <tr class="prop">
                        <td valign="top" class="name">Last Name:</td>
                        <td valign="top" class="value">${contact.lastName}</td>
                    </tr>
                    <tr class="prop">
                        <td valign="top" class="name">Address 1:</td>
                        <td valign="top" class="value">${contact.address1}</td>
                    </tr>
                    <tr class="prop">
                        <td valign="top" class="name">Address 2:</td>
                        <td valign="top" class="value">${contact.address2}</td>
                    </tr>
                    <tr class="prop">
                        <td valign="top" class="name">City:</td>
                        <td valign="top" class="value">${contact.city}</td>
                    </tr>
                    <tr class="prop">
                        <td valign="top" class="name">State:</td>
                        <td valign="top" class="value">${contact.state}</td>
                    </tr>
                    <tr class="prop">
                        <td valign="top" class="name">ZIP:</td>
                        <td valign="top" class="value">${contact.zip}</td>
                    </tr>
                    <tr class="prop">
                        <td valign="top" class="name">Phone:</td>
                        <td valign="top" class="value">${contact.phone}</td>
                    </tr>
                    <tr class="prop">
                        <td valign="top" class="name">Email:</td>
                        <td valign="top" class="value">${contact.email}</td>
                    </tr>
                </tbody>
                </table>
            </div>
            <div class="buttons">
                <span class="button">
                    <g:submitButton class="previous" name="previous" value="Previous" />
                    <g:submitButton class="next" name="next" value="Finish" />
                    <g:submitButton class="cancel" name="cancel" value="Cancel" />
                </span>
            </div>
        </g:form>
    </div>
</body>
</html>