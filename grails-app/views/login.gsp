<html>
<head>
<meta http-equiv="Content-Type"
content="text/html; charset=UTF-8"/>
<meta name="layout" content="main" />
<title>Login</title>
</head>
<body>
		<div class="body">
		<h1>Login</h1>
			%{--  --}%

<g:form url="[action:'getUsuarios',controller:'Login']" method="post" >

		<div class="dialog">
		<table>
			<tbody>
				<tr class="prop">
					<td valign="top" class="name">
					<label for="login">Correo:</label>
					</td>
					<td valign="top">
					<input type="text"
					id="correo" name="correo"/>
					</td>
				</tr>
				<tr class="prop">
					<td valign="top" class="name">
					<label for="password">Password:</label>
					</td>
					<td valign="top">
					<input type="password"
					id="password" name="password"/>
					</td>
				</tr>
			</tbody>
		</table>
		</div>

						<div class="buttons">
						<span class="button">
						<input type="submit" value="Login" />
						</span>
						</div>
</g:form>
</div>
</body>
</html>