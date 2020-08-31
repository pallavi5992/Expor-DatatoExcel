<!DOCTYPE html>
<html lang="en">
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style type="text/css"> #container{ margin:10px; } h2{ font-family: monospace; }</style>
<body>
<div id="container">
<h2 class="text-success">Export Data to Excel in PHP Codeigniter</h2>
<table class="table table-bordered">
<tr><th>name</th><th>Email</th><th>Phone</th><th>Postal Add</th><th>Permanent Add</th><th>Department</th><th>Mananger</th><th>Status</th></tr>
<?php if(isset($employeeData)) {
foreach($employeeData as $key => $emp) {  ?>
<tr><td><?php echo $emp['name']; ?></td><td><?php echo $emp['email']; ?></td><td><?php echo $emp['phone']; ?></td><td><?php echo $emp['employee_postal_address']; ?></td><td><?php echo $emp['employee_permanent_address']; ?></td><td><?php echo $emp['department_tittle']; ?></td><td><?php echo $emp['dep_manager']; ?></td><td><?php echo $emp['status']; ?></td></tr> <?php }} ?>
</table>
<form method="post" action="<?php echo site_url(); ?>/employee/createexcel"">
<button class="btn btn-info" type="submit" name="export">Export</button> </form>
</div>
</body>
</html>