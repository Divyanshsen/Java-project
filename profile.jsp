<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="static/css/common.css">
  <link rel="stylesheet" href="static/css/form.css">
  <link rel="stylesheet" href="static/css/profile.css">
  <title>ecart::profile</title>
 </head>
 <body>
  <div id="container">
	<%@ include file="header.jsp" %>
	
	<%@ include file="menu.jsp" %>
	
	<div id="main_body">	

		<form action="save_profile.do" method="post">
			<table id="form_box">
				<caption>Profile</caption>
				<tr>
					<td class="lft">
						<label for="username">First Name</label>
					</td>
					<td class="rht">
						<input type="text" name="firstname" maxlength="20" class="input_normal" id="firstname" value="${user.firstName}">
					</td>
				</tr>
				<tr>
					<td class="lft">
						<label for="username">Middle Name</label>
					</td>
					<td class="rht">
						<input type="text" name="middlename" maxlength="20" class="input_normal" id="middlename" value="${user.middleName}">
					</td>
				</tr>
				<tr>
					<td class="lft">
						<label for="username">Last Name</label>
					</td>
					<td class="rht">
						<input type="text" name="lastname" maxlength="20" class="input_normal" id="lastname" value="${user.lastName}">
					</td>
				</tr>
				<tr>
					<td class="lft">
						<label for="email">Date of Birth</label>
					</td>
					<td class="rht">
						<input type="date" name="dob" class="input_normal" id="dob" value="${user.dob}">
					</td>
				</tr>
				<tr>
					<td class="lft">
						<label for="username">Mobile Number</label>
					</td>
					<td class="rht">
						<input type="text" name="mobile" maxlength="10" minlength="10" class="input_normal" id="mobile" value="${user.mobile}">
					</td>
				</tr>				
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="Save&gt;&gt;" id="button">
						<a href="address.do" id="button2">Skip</a>		
					</td>
				</tr>
			</table>
		</form>

	</div>	
	
	<%@ include file="footer.jsp" %>
  </div>  
 </body>
</html>





<!-- <table id="two_part_box">
			<tr>
				########### PROFILE PIC ###########
				<td id="left_part_box">
					<img src="static/images/user.png" id="profpic">
					<form action="save_profpic.do" method="post" enctype="multipart/form-data">
						<table id="form_box">
							<caption>Profile Pic</caption>
							<tr>
								<td class="lft">
									<label for="username">Profile Pic</label>
								</td>
								<td class="rht">
									<input type="file" name="profpic" class="input_normal" id="profpic_fld">
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input type="submit" value="Upload" id="button">
								</td>
							</tr>
						</table>
					</form>
				</td>
				
				########### PROFILE ###########
				<td id="right_part_box">					
					<form action="save_profile.do" method="post">
						<table id="form_box">
							<caption>Profile</caption>
							<tr>
								<td class="lft">
									<label for="username">First Name</label>
								</td>
								<td class="rht">
									<input type="text" name="firstname" maxlength="20" class="input_normal" id="firstname">
								</td>
							</tr>
							<tr>
								<td class="lft">
									<label for="username">Middle Name</label>
								</td>
								<td class="rht">
									<input type="text" name="middlename" maxlength="20" class="input_normal" id="middlename">
								</td>
							</tr>
							<tr>
								<td class="lft">
									<label for="username">Last Name</label>
								</td>
								<td class="rht">
									<input type="text" name="lastname" maxlength="20" class="input_normal" id="lastname">
								</td>
							</tr>
							<tr>
								<td class="lft">
									<label for="email">Date of Birth</label>
								</td>
								<td class="rht">
									<input type="date" name="dob" class="input_normal" id="dob">
								</td>
							</tr>
							<tr>
								<td class="lft">
									<label for="username">Mobile Number</label>
								</td>
								<td class="rht">
									<input type="text" name="mobile" maxlength="10" minlength="10" class="input_normal" id="mobile">
								</td>
							</tr>
							<tr>
								<td class="lft">
									<label for="password">Address</label>
								</td>
								<td class="rht">
									<textarea name="address" rows="5" cols="30" maxlength="500" class="input_normal" id="address"></textarea>
								</td>
							</tr>
							<tr>
								<td class="lft">
									<label for="repassword">City</label>
								</td>
								<td class="rht">
									<input type="text" name="city" class="input_normal" id="city">
								</td>
							</tr>
							<tr>
								<td class="lft">
									<label for="repassword">Pin</label>
								</td>
								<td class="rht">
									<input type="text" name="pin" 
									maxlength="6" class="input_normal" id="pin">
								</td>
							</tr>							
							<tr>
								<td colspan="2" align="center">
									<input type="submit" value="Save" id="button">
								</td>
							</tr>
						</table>
					</form>					
				</td>
			</tr>
		</table> -->