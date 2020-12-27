<?php
	require 'conn.php';	
	session_start();
    if (isset($_POST['sub'])) {
    	$query = $_POST['Aquery'];
    	
    	if ($_SESSION['user_role'] == 1 && (strpos($query, 'main_db') || strpos($query, '*'))) {
			header('location: home.php');
		}
    	
    	//echo "<h1>".strpos($query, 'main_db')."</h1>";
    	$result=mysqli_query($con,$query) or die(mysqli_error($con));
    } else {
    	// header('location: home.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Thesis Project</title>
    <link href="frontend/css/bootstrap.min.css" rel="stylesheet">
    <link href="frontend/css/font-awesome.min.css" rel="stylesheet">
    <link href="frontend/css/prettyPhoto.css" rel="stylesheet">
    <link href="frontend/css/price-range.css" rel="stylesheet">
    <link href="frontend/css/animate.css" rel="stylesheet">
  <link href="frontend/css/main.css" rel="stylesheet">
  <link href="frontend/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
  <header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <div class="contactinfo">
              <ul class="nav nav-pills">
                <li><a href="">
              		<?php
						if ($_SESSION['user_role'] == 2) {
							echo "<span style='color: red; font-size: 15px;'>Role: Admin</span>";
						} else {
							echo "<span style='color: red; font-size: 15px;'>Role: User</span>";
						}
					?>
              	</a></li> 
              </ul>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="social-icons pull-right">
              <ul class="nav navbar-nav">      
              	 

                <li><a href="logout.php">Logout</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div><!--/header_top-->          
  </header><!--/header-->  
  
  <section  style="min-height: 500px;">
    <div class="container">
      <div class="row">
        <div class="col-sm-3">                                    
          
        </div>
        
        <div class="col-sm-9 padding-right">

	<form style="margin-top: 100px;" method="POST" action="home.php">
		Insert Query: <input type="text" name="Aquery" style="width: 400px;">

		<input type="submit" name="sub" value="Run Query">
	</form>

	<?php		
		if (isset($_POST['sub'])) {
			echo "<br/><br/><br/><span style='color: green; font-weight: bold;'>Your input query is: </span><br/>";
			echo '<u>'.$query.'</u>';
			echo "<h1>Result</h1>";
			if (strpos($query, 'SUM')) {
        if ($_SESSION['user_role'] != 2) {
            $row = mysqli_fetch_assoc($result);
          $number = strlen($row['total']);
          
          if (strpos(strrev($row['total']), '-')) {
            $number = $number - 1;
          }
            
          echo "<h1>Sum is:".$row['total'].' to '.rand(2, 9);
          for ($i=0; $i < $number-1; $i++) { 
            echo '*';
          }
        } else {
          $row = mysqli_fetch_assoc($result);
          echo "<h1>Sum is:".$row['total'];
        }
					
				} else {
					while($row2 = mysqli_fetch_assoc($result)){  			
						echo "<pre>";
						print_r($row2);
						echo "</pre>";
					}
				}						
		}
	?>
        </div>
      </div>
    </div>
  </section>
  
  <footer id="footer">    
    <div class="footer-bottom">
      <div class="container">
        <div class="row">        	
        	<p class="text-center">Department of CSE | IUBAT</p>        	
        </div>
      </div>
    </div>
  </footer>
</body>
</html>
