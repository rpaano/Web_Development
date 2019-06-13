<?php $searchs = "" ?>
<!DOCTYPE html>
	<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	</head>
	<body>

	<h2 align="center">Admin Data</h2>
	
	<div class="topnav">
	  <a class="active" href="insert.php">Home</a>
	  <a href="insert.php">Insert Data</a>
	  <a href="generate_pdf.php?id=<?php if(isset($_POST['search'])){ $searchs = $_POST['search']; echo $searchs; }else{
	  	echo "";	
	  } ?>">Print</a>
	  <div class="search-container">
	    <form action="index.php" method="post">
		<input type="text" name="search" placeholder="Search" value="<?php if(isset($_POST['search'])){ $searchs = $_POST['search']; echo $searchs; }?>">
		
		<button type="submit"  value="search"><i class="fa fa-search"></i></button>
	</form>
	  </div>
	</div>

	<br>

	
	<table>
	
	<tr>
    <th>Data & Time</th>
    <th>Brgy. Case Number </th>
    <th>Complainant</th>
	<th>Respondent</th>
	<th>Nature of Case</th>
	<th>Disposition/Remarks</th>
	<th>Status</th>
	<th>Edit</th>
	<th>Status</th>
	
	</tr>
	<?php
	$connect = mysqli_connect("localhost", "root", "") or die ("cannot connect");
	$mydb=mysqli_select_db($connect, "case_db") or die ("cannot connect");
	
	$searchs = "";
	
	
	if(isset($_POST['search']))
	{
		$searchs = $_POST['search'];
		//echo "$searchs";
		$query = mysqli_query($connect, "SELECT * FROM admin INNER JOIN pending_cases on admin.admin_id=pending_cases.admin_id WHERE CONCAT( `date_time`, `brgycasenumber`, `complainant`, `respondent`, `natureofcase`, `disposition_remarks`,`status`) LIKE '%".$searchs."%'") or die ("could not search");
		
		//echo "string2";
		if(empty($query))
		{
			echo "<tr>No Data Fund</tr>";
		}
		else
		{
			//echo "string3";
			/*while($row = mysqli_fetch_array($query))
			{
				//echo "string4";
				echo "<tr><td>" . $sec = strtotime($row['date_time']); $secs = date("F-d-Y h:i a", $sec);   echo $secs . "</td><td>" . $row['brgycasenumber'] . "</td><td>" . $row['complainant'] . "</td>
				<td>" . $row['respondent'] . "</td><td>" . $row['natureofcase'] . "</td><td>" . $row['disposition_remarks'] . "</td>
				<td>" . $row['status'] . "</td><td> <a>Edit</a> </td><td> <a>Delete</a> </td></tr>";
			}*/
		}
	}
	else	{
		
		$query = mysqli_query($connect, "SELECT * FROM admin INNER JOIN pending_cases ON admin.admin_id = pending_cases.admin_id;") or die ("could not search");
		
		
		
		if(empty($query))
		{

			echo "<tr>No Data Fund</tr>";
		}
		else
		{
			/*while($row = mysqli_fetch_array($query))
			{
				$the = $row['admin_id'];
				echo $the;	
				
				//echo "<tr><td>" . $row['date_time'] . "</td><td>" . $row['brgycasenumber'] . "</td><td>" . $row['complainant'] . "</td>
				//<td>" . $row['respondent'] . "</td><td>" . $row['natureofcase'] . "</td><td>" . $row['disposition_remarks'] . "</td>
				//<td>" . $row['status'] . "</td><td> <a href='edit.php'>Edit</a> </td><td> <a href='index.php?id=<?php echo $the'>Delete</a> </td></tr>"; 
				
			}*/
		}
	}

?>
	<?php  while($row = mysqli_fetch_array($query)): ?>

	<tr>
		<td> <?php echo $row['date_time'] ;?> </td>
		<td> <?php echo $row['brgycasenumber'] ?> </td>
		<td> <?php echo $row['complainant'] ?> </td>
		<td> <?php echo $row['respondent'] ?> </td>
		<td> <?php echo $row['natureofcase'] ?> </td>
		<td> <?php echo $row['disposition_remarks'] ?> </td>
		<td> <?php echo $row['status'] ?> </td>
		<td><a href="edit.php?id=<?php echo $row['admin_id'];?>">Edit</a> </td> 
		<td> <a href="delete.php?id=<?php  echo $row['admin_id'];?>" onclick="return confirm('Are you sure?')">Delete</a> </td>
	</tr>
	<?php endwhile; ?>
	
	</table>

	</body>
</html>

