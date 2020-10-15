<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="header">
	<img src="static/images/logo.png" id="logo">
	<span id="auth_ctrl_box">
		<c:choose>
			<c:when test="${user==null}">
				<a href="signin.do">Sin-In</a>
				<a href="signup.do">Sin-Up</a>
			</c:when>
			<c:otherwise>
				<a href="signout.do">Sign-Out</a>
			</c:otherwise>
		</c:choose>
	</span>
</div>