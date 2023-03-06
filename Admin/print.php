<script language="javascript">
function Clickheretoprint()
{ 
  var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,"; 
      disp_setting+="scrollbars=yes,width=400, height=400, left=100, top=25"; 
  var content_vlue = document.getElementById("print_content").innerHTML; 
  
  var docprint=window.open("","",disp_setting); 
   docprint.document.open(); 
   docprint.document.write('<html><head><title>ARTEASE</title>'); 
   docprint.document.write('</head><body onLoad="self.print()" style="width: 400px; font-size:12px; font-family:arial;">');          
   docprint.document.write(content_vlue);          
   docprint.document.write('</body></html>'); 
   docprint.document.close(); 
   docprint.focus(); 
}
</script>


<br><br>
<a href="javascript:Clickheretoprint()">Print</a>
<div id="print_content" style="width: 400px;">
<img src="img/artease.PNG"width="171" height="119" alt="logo" longdesc="images/logo.png" /><br />

<strong>customer details</strong><br><br>
<?php
include('shop.php');
//$id=$_GET['id'];
$result = mysql_query("SELECT * FROM customer_registration WHERE CustomerId=2");
while($row = mysql_fetch_array($result))
	{
		echo 'CustomerName: '.$row['CustomerName'].' <br>';
		echo 'Address: '.$row['Address'].'<br>';
		echo 'City: '.$row['City'].'<br>';
		echo 'Email: '.$row['Email'].'<br>';
		echo 'Mobile: '.$row['Mobile'].'<br>';
		echo 'Gender: '.$row['Gender'].'<br>';
	}
	?>
	</div>
	
