<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="static/css/common.css">
  <link rel="stylesheet" href="static/css/form.css">
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
  <title>ecart::signin</title>
 </head>
 <body>
  <div id="container">
	<%@ include file="header.jsp" %>
	
	<%@ include file="menu.jsp" %>
	
	<div id="main_body">
		<% String error = (String)request.getAttribute("error"); %>

		<div id="error_message" style='display:<%= error==null?"none":"block" %>'>
			<%= error %>
		</div>

		<form action="signin.do" method="post">
			<table id="form_box">
				<caption>SignIn</caption>
				<tr>
					<td class="lft">Username/Email</td>
					<td class="rht">
						<input type="text" name="unm_email" class="input_normal">
					</td>
				</tr>
				<tr>
					<td class="lft">Password</td>
					<td class="rht">
						<input type="password" name="password" class="input_normal">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<div class="g-recaptcha" data-sitekey="6LeZiNYZAAAAAJPafgHYGa11EPJczR3x_zDDYCOr"></div>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="Signin" id="button">
					</td>
				</tr>
			</table>
		</form>
	</div>	
	
	<%@ include file="footer.jsp" %>
  </div>
 </body>
</html>
