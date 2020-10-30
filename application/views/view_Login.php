<?php require('bootstarp.php');?>

<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>หน้าแรก</title>
    <div class="form-group"align = "center" >
    <div class="card w-50 " style="border-color:#708090" >
        <div class="card-body " style="background-color:#F0F8FF">
            <div class="container">
    <br><br><br><br><br><br><br><br><br>
<center><form name="form1" method="post" action="../Alumni/Check_Login">
				<input name="STD_ID" type="text"style="border-color:#708090" placeholder="กรุณากรอกรหัสนักศึกษา">
				<br><br>	
                <input name="Password" type="password"style="border-color:#708090" placeholder="กรุณากรอกรหัสผ่าน">
                <br><br>
                <input class="btn btn-primary " type="submit" name="login"  value="Login" />
				<a href="../Alumni/index"><button type="button" class="btn btn-primary">ย้อนกลับ</button></a>
                </form>
<br>
    
</form></center>
	</div>
    </div>
    </div>
    </div>
</head>
<body>

</body>
</html>