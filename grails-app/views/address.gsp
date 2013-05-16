<html>
	<head>
		<meta http-equiv="Content-Type"
		content="text/html; charset=UTF-8"/>
		<meta name="layout" content="main"/>
		<titel>Build Content - Address</titel>
	</head>
	<body>
		<div class="body">
			<h1>Build Contact - Address</h1>
			<g:if test="${message}">
				<div class="message">${message}</div>
			</g:if>
			<g:hasErrors bean="${command}">
				<div class="errors">
					<g:renderErrors bean="${command}" as="list"/>
				</div>
			</g:hasErrors>
			<g:form action="build">
				<div class="dialog">
					<table>
					<tbody>
						<tr class="prop">
							<td valign="top" class="name">
								<label for="address1"> Address1:</label>
							</td>
							<td valign="top">
								<input type="text" id="address1" name="address1" value="${contact.address1}" />
							</td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name">
								<label for="address2"> Address2:</label>
							</td>
							<td valign="top">
								<input type="text" id="address2" name="address2" value="${contact.address2}" />
							</td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name">
								<label for="city">City:</label>
							</td>
							<td valign="top">
								<input type="text" id="city" name="city" value="${contact.city}" />
							</td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name">
								<label for="state">State:</label>
							</td>
							<td valign="top">
								<input type="text" id="state" name="state" value="${contact.state}" />
							</td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name">
								<label for="zip">Zip:</label>
							</td>
							<td valign="top">
								<input type="text" id="zip" name="zip" value="${contact.zip}" />
							</td>
						</tr>
					</tbody>
					</table>
				</div>
				<div class="buttons">
					<span class="button">
						<g:submitButton class="previous" name="previous" value="Previous" />
						<g:submitButton class="next" name="next" value="Next" />
						<g:submitButton class="cancel" name="cancel" value="Cancel" />
					</span>
				</div>
			</g:form>
		</div>
	</body>