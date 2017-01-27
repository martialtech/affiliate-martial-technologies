<?php include('auth/db-connect.php');
//PROMPT FOR INSTALLATION
if($mysqli->connect_errno){
	header('Location: index');
} 
//NEW MEMBER REGISTRATION
include('auth/register.inc.php'); 
include('data/data-functions.php');
//SITE SETTINGS
list($meta_title, $meta_description, $site_title, $site_email) = all_settings();
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="<?php echo $meta_description;?>">
<meta name="author" content="">
<title><?php echo $meta_title;?></title>

<!-- Bootstrap Core CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="assets/css/base.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/login.css" rel="stylesheet">
<link href="assets/fonts/css/fa.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="assets/img/aplogo.png" style="width:200px; margin-top:-10px;"></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Welcome</a>
                    </li>
                    <li>
                        <a href="#">Affiliates</a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact Us</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
<!-- Page Content -->
<div class="container">
  <div class="row">
    <div class="col-lg-12"> <a class="navbar-brand" href="#">
      <?php $width = ''; site_logo($width);?>
      </a> </div>
  </div>
  <div class="row">
    <div class="col-lg-9 col-md-9 col-xs-12">
      <form action="index" method="post" class="form-horizontal login-form">
        <fieldset >
          <legend class="join-our-affiliare-program">Join our Affiliate Program</legend>
          <legend >Account Information</legend>
          <?php echo '<div style="color:red;">'.$error_msg.'</div>'; ?>
          <div class="col-lg-6 col-md-6 col-xs-12">
          <div class="control-group">
            <label class="control-label" for="fullname">Full Name</label>
            <div class="controls">
              <input id="textinput" name="fullname" type="text" placeholder="Full Name" class="input-xlarge"  value="<?php echo $_POST['fullname'];?>" required>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="username">Username</label>
            <div class="controls">
              <input id="textinput" name="username" type="text" placeholder="username" class="input-xlarge" value="<?php echo $_POST['username'];?>" required>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="email">E-Mail Address</label>
            <div class="controls">
              <input id="textinput" name="email" type="email" placeholder="email@provider.com" class="input-xlarge" value="<?php echo $_POST['email'];?>" required>
            </div>
          </div>
          </div>
          <div class="col-lg-6 col-md-6 col-xs-12">
          <!-- Password input-->
          <div class="control-group">
            <label class="control-label" for="passwordinput">Password</label>
            <div class="controls">
              <input id="passwordinput" name="p" type="password" placeholder="password" class="input-xlarge" value="<?php echo $_POST['qp'];?>" required>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="passwordinput">Confirm Password</label>
            <div class="controls">
              <input id="passwordinput" name="confirmpwd" type="password" placeholder="Confirm" class="input-xlarge" value="<?php echo $_POST['qcp'];?>" required>
            </div>
          </div>
          <div class="control-group terms">
            <div class="controls">
              <input type="checkbox" value="1" name="terms" <?php if($_POST['terms']=='1') echo 'checked';?>>
              I accept the terms of the affiliate policy </div>
          </div>
          </div>
          <legend>Contact Information</legend>
          <div class="col-lg-6 col-md-6 col-xs-12">
          <div class="control-group">
            <label class="control-label" for="E_email">E-Mail*</label>
            <div class="controls">
              <input id="textinput" name="email_sec" type="text" placeholder="E-Mail" class="input-xlarge"  value="<?php echo $_POST['email_sec'];?>" required>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="Phone">Phone</label>
            <div class="controls">
              <input id="textinput" name="phone" type="text" placeholder="Phone Number" class="input-xlarge" value="<?php echo $_POST['phone'];?>" required>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="icq">ICQ</label>
            <div class="controls">
              <input id="textinput" name="icq" type="text" placeholder="icq" class="input-xlarge" value="<?php echo $_POST['icq'];?>" >
            </div>
          </div>
          </div>
          <div class="col-lg-6 col-md-6 col-xs-12">
          <!-- Password input-->
          <div class="control-group">
            <label class="control-label" for="Skype">Skype</label>
            <div class="controls">
              <input id="Skype" name="skype" type="text" placeholder="Skype" class="input-xlarge" value="<?php echo $_POST['skype'];?>" >
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="AIM">AIM</label>
            <div class="controls">
              <input id="passwordinput" name="aim" type="text" placeholder="AIM" class="input-xlarge" value="<?php echo $_POST['aim'];?>" >
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="MSN">MSN</label>
            <div class="controls">
              <input id="MSN" name="msn" type="text" placeholder="MSN" class="input-xlarge" value="<?php echo $_POST['msn'];?>" >
            </div>
          </div>
          
          </div>
          <legend>Mailing Address</legend>
          <div class="col-lg-6 col-md-6 col-xs-12">
          <div class="control-group">
            <label class="control-label" for="Address">Address</label>
            <div class="controls">
              <textarea name="address" placeholder="Address" class="input-xlarge" ><?php echo $_POST['email_sec'];?></textarea>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="city">City</label>
            <div class="controls">
              <input id="city" name="city" type="text" placeholder="city" class="input-xlarge" value="<?php echo $_POST['city'];?>" required>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="zip">Zip Code</label>
            <div class="controls">
              <input id="zip" name="zip" type="text" placeholder="zip" class="input-xlarge" value="<?php echo $_POST['zip'];?>" >
            </div>
          </div>
          </div>
          <div class="col-lg-6 col-md-6 col-xs-12">
          <!-- Password input-->
          <div class="control-group">
            <label class="control-label" for="State">State</label>
            <div class="controls">
              <input id="State" name="state" type="text" placeholder="State" class="input-xlarge" value="<?php echo $_POST['state'];?>" >
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="Country">Country</label>
            <div class="controls">
              <input id="Country" name="country" type="text" placeholder="Country" class="input-xlarge" value="<?php echo $_POST['country'];?>" >
            </div>
          </div>
          
          
          </div>
          
          <legend>Payment Details</legend>
          <div class="col-lg-6 col-md-6 col-xs-12">
          <div class="control-group">
            <label class="control-label" for="PaymentMethod">Payment Method</label>
            <div class="controls">
            <input id="paymentmethod" name="paymentmethod" type="text" placeholder="Payment method" class="input-xlarge" value="<?php echo $_POST['paymentmethod'];?>">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="minimumpayout">Minimum Payout</label>
            <div class="controls">
              <input id="minimumpayout" name="minimumpayout" type="text" placeholder="minimumpayout" class="input-xlarge" value="<?php echo $_POST['minimumpayout'];?>" required>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="payto">Pay To</label>
            <div class="controls">
              <input id="payto" name="payto" type="text" placeholder="Pay to" class="input-xlarge" value="<?php echo $_POST['payto'];?>" >
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="Address">Address</label>
            <div class="controls">
              <textarea name="addressp" placeholder="Payment Address " class="input-xlarge" ><?php echo $_POST['addressp'];?></textarea>
            </div>
          </div>
          <!--<div class="control-group">
            <label class="control-label" for="payto">Pay To</label>
            <div class="controls">
              <input id="payto" name="payto" type="text" placeholder="Pay to" class="input-xlarge" value="<?php echo $_POST['payto'];?>" >
            </div>
          </div>-->
          </div>
          <div class="col-lg-6 col-md-6 col-xs-12">
          <!-- Password input-->
          <div class="control-group">
            <label class="control-label" for="State">State</label>
            <div class="controls">
              <input id="State" name="state" type="text" placeholder="State" class="input-xlarge" value="<?php echo $_POST['state'];?>" >
            </div>
          </div>    
          <div class="control-group">
            <label class="control-label" for="city">City</label>
            <div class="controls">
              <input id="city" name="city" type="text" placeholder="city" class="input-xlarge" value="<?php echo $_POST['city'];?>" required>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="zip">Zip Code</label>
            <div class="controls">
              <input id="zip" name="zip" type="text" placeholder="zip" class="input-xlarge" value="<?php echo $_POST['zip'];?>" >
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="Country">Country</label>
            <div class="controls">
              <input id="Country" name="country" type="text" placeholder="Country" class="input-xlarge" value="<?php echo $_POST['country'];?>" >
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="TaxIDSSN">Tax ID/SSN ? Only if in US</label>
            <div class="controls">
              <input id="TaxIDSSN" name="taxidssn" type="text" placeholder="Tax ID/SSN" class="input-xlarge" value="<?php echo $_POST['taxidssn'];?>" >
            </div>
          </div>
          </div>
          <!-- Submit-->
          <div class="control-group">
            <div class="controls">
              <input type="submit" class="btn btn-warning btn-block register-btn" value="Create Account">
            </div>
          </div>
        </fieldset>
      </form>
    </div>
    <div class="col-lg-3 col-md-3 col-xs-12">
      <form method="post" action="access/process_login" class="form-horizontal login-form">
        <fieldset>
          <legend>Login</legend>
          <?php if($_GET['logoff']=='1'){
				echo '<span class="success-text">You have logged off successfully</span>';
			} 
			if($_GET['error']=='1'){
				echo '<span class="red">Invalid Username or Password</span>';
			}?>
          <!-- Username -->
          <div class="control-group">
            <label class="control-label" for="textinput">Username or E-mail</label>
            <div class="controls">
              <input id="textinput" name="email" type="text" placeholder="demo" class="input-xlarge">
            </div>
          </div>
          <!-- Password input-->
          <div class="control-group">
            <label class="control-label" for="passwordinput">Password</label>
            <div class="controls">
              <input id="passwordinput" name="p" type="password" placeholder="Password" class="input-xlarge">
            </div>
          </div>
          <div class="control-group forgot-link"> <a href="forgot">Forgot your username or password?</a> </div>
          <!-- Submit-->
          <div class="control-group">
            <div class="controls">
              <input type="submit" class="btn btn-primary btn-block login-btn" value="Login">
            </div>
          </div>
        </fieldset>
      </form>
      
    </div>
    <div class="affiliate-description col-lg-12 col-md-12 col-xs-12">
        <h1><i class="fa fa-help-circled"></i> Why Join our Affiliate Program?</h1>
        <ul>
          <li><i class="fa fa-ok-circled2"></i> Earn 10% on every sale you send us!
          <li>
          <li><i class="fa fa-ok-circled2"></i> Sponsor other Affiliates and earn when they do!
          <li>
          <li><i class="fa fa-ok-circled2"></i> Earn by bringing us new and awesome leads
          <li>
          <li><i class="fa fa-ok-circled2"></i> Earn $0.05 for Each Unqiue Visitor
          <li>
        </ul>
        <br>
      </div>
  </div>
</div>
<!-- /.container --> 

<!-- jQuery --> 
<script src="assets/js/jquery.js"></script> 

<!-- Bootstrap Core JavaScript --> 
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
