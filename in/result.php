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
    	header('location: home.php');
    }



?>
<!DOCTYPE html>
<html>
<head>
	<title>Result</title>
</head>
<body>
	<h1>Result</h1>
	<table border="1px">
		<tr>
			<?php
				// if (!strpos($query, 'SUM') && !strpos($query, 'COUNT')) {							
				// 	if (strpos($query, 'name')) {
				// 		echo "<th>Name</th>";
				// 	} else {
				// 		echo "<th>Sex</th>
				// 		<th>Race</th>
				// 		<th>Aid</th>
				// 		<th>Fine</th>
				// 		<th>Drug</th>
				// 		<th>Dormes</th>";
				// 	}
				// } else {
				// 	if (strpos($query, 'SUM')) {
				// 		echo "<th>Sum</th>";
				// 	} elseif (strpos($query, 'COUNT')) {
				// 		echo "<th>Count</th>";
				// 	}
				// 	echo "</tr>";
				// 	$row = mysqli_fetch_assoc($result);
				// 	echo '<tr><td>'.$row['total'].'</td></tr>';					
				// }

				// while($row2 = mysqli_fetch_assoc($result)){  
				// 	echo "<tr><td>".$row2['name']."</td>
				// 	<td>
				// 	</tr>"; 					                                         
			 //    }			

				if (strpos($query, 'SUM')) {
					$row = mysqli_fetch_assoc($result);
					$number = strlen($row['total']);
					
					if (strpos(strrev($row['total']), '-')) {
						$number = $number - 1;
					}
						
					echo '<h1>'.$number.'</h1>';
					echo "<h1>Sum is:".$row['total'].' to '.rand(2, 9);
					for ($i=0; $i < $number-1; $i++) { 
						echo '*';
					}
				} else {
					while($row2 = mysqli_fetch_assoc($result)){  			
						echo "<pre>";
						print_r($row2);
						echo "</pre>";
					}
				}
			

			?>
	</table>	
</body>
</html>	