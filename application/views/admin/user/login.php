<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V3</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../../../templates/realsite/assets/img/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../../vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../../templates/realsite/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../../templates/realsite/assets/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../../vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../../../vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../../vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../../vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../../../vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../../templates/realsite/assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="../../../templates/realsite/assets/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('../../../templates/realsite/assets/img/images/bg-01.jpg');">
			<div class="wrap-login100">
        <form action="../../../index.php/admin/user/login#content" method="post" accept-charset="utf-8" class="login100-form validate-form">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-pin"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						<?php echo lang('Login')?>
          			</span>
          
            
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="<?php echo lang('Username'); ?>" id="inputUsername" autocomplete="off">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
          </div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" placeholder="<?php echo lang('Password') ?>" id="inputPassword" autocomplete="off"> 
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
 
					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember">
						<label class="label-checkbox100" for="ckb1">
            			<?php echo lang('Remember me')?>
						</label>
					</div>

					<div class="container-login100-form-btn">
            			<button type="submit" class="login100-form-btn"><?php echo lang('Sign in')?></button>
					</div>

					<div class="text-center p-t-90">
            			<a class="txt1" href="<?php echo site_url('admin/user/forgetpassword')?>"><?php echo lang_check('Forget password?')?></a>
          			</div>
				</form>
			</div>
		</div>
	</div>
	

  <div id="dropDownSelect1"></div>
  
	
<!--===============================================================================================-->
	<script src="../../../vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../../../vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../../../vendor/bootstrap/js/popper.js"></script>
	<script src="../../../vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../../../vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../../../vendor/daterangepicker/moment.min.js"></script>
	<script src="../../../vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../../../vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="../../../templates/realsite/assets/js/main.js"></script>


<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
</script>

</body>
</html>