<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>ARTEASE CLOTHING</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<style type="text/css">
<!--
.style8 {font-size: 24px}
.style9 {font-size: 95%; font-weight: bold; color: #003300; font-family: Verdana, Arial, Helvetica, sans-serif; }
-->
</style>
</head>
<body>
<div id="wrapper">
  
  <?php
  include "Header1.php";
  ?>
  <div id="content">
  <div id="call">
  <h3>Call Us</h3>
           <h4>Safaricom</h4>
           <p>+254706172792</p>
           <h4>Airtel</h4>
           <p>+254734930891</p>
       </div>
       <div id="email">
           <h3>Email Us</h3>
           <p>Our dedicated specialists will be delighted to answer your questions</p>
           <form action="" method="post">
    <input type="submit" value="Send an email" />
    <input type="hidden" name="button_pressed" value="1" />
</form>

<?php

if(isset($_POST['button_pressed']))
{
    $to      = 'hstry@gmail.com';
    $subject = 'the subject';
    $message = 'hello';
    $headers = 'From:#.com' . "\r\n" .
        'Reply-To: #.com' . "\r\n" .
        'X-Mailer: PHP/' . phpversion();

    mail($to, $subject, $message, $headers);

    echo 'Email Sent.';
}

?>
       </div>
       <div id="facebook">
           <h3>Follow us on Facebook</h3>
           <a href="http://www.facebook.com"><img src="img/facebook.jpg"></a>
       </div>
       </div>
    <div id="twitter">
           <h3>Follow us on Twitter</h3>
           <a href="http://www.twitter.com"><img src="img/twitter.jpg"></a>
       </div>
       </div>
	   <div style="clear:both;"></div>
	   <?php
 include "Footer.php";
 ?>
</div>
</body>
</html>