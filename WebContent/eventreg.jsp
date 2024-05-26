<html>
<head>
<title>My Web Page</title>
</head>
<body>
<center><h2>EVENT REGISTRATION</h2></center>
<form name="form" action="eventtable.jsp" method="post" align="center">

<table align="center" cellspacing="10">

<tr>
<td>EVENT TYPE</td>
<td> <select name="type" required>
<option>---Select---</option>
<option value="tech">TECHINICAL</option>
<option value="logic" >LOGISTICS</option>
<option value="creative">CREATIVE</option>
</select><br>
</script>
</td>
</tr>

<tr>
<td>EVENT DATE:</td>
<td>
<input type="date" name="date" value="2019-11-04" min="2019-11-04" max="2019-11-06">
</td>
</tr>

<tr>
<td>EVENT TIME:</td>
<td><select name="time" required>
<option>---Select---</option>
<option value="9:00 to 1:00">9:00AM to 1:00PM</option>
<option value="2:00PM to 5:00PM">2:00PM to 5:00PM</option>
</select>
</td>
</tr>
<tr> 
<td>EVENT PLACE</td>
<td><select name="city" required>
<option>---Select---</option>
<option value="Vijayawada">Vijayawada</option>
<option value="Hyderabad" >Hyderabad</option>
<option value="Guntur">Guntur</option>
</select><br></td>
</tr>
</table>
<br>
<input type="submit" value="Register">
<input type="reset" value="Clear">
</form>
</body>
</html>