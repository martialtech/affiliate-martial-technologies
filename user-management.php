<?php 
include('auth/startup.php');
include('data/data-functions.php');
//SITE SETTINGS
list($meta_title, $meta_description, $site_title, $site_email) = all_settings();
//REDIRECT ADMIN
if($admin_user!='1'){header('Location: dashboard');}
include('assets/comp/header.php');
?>

<body>
	<!-- Start Top Navigation -->
	<?php include('assets/comp/top-nav.php');?>
    <!-- Start Main Wrapper --> 
   	<div id="wrapper">
		<!-- Side Wrapper -->
        <div id="side-wrapper">
            <ul class="side-nav">
                <?php include('assets/comp/side-nav.php');?>
			</ul>
        </div><!-- End Main Navigation --> 

        <div id="page-content-wrapper">
            <div class="container-fluid">
				<div class="row">
				<!-- Start Panel -->
					<div class="col-lg-12">
						<div class="panel">
							<div class="panel-heading panel-primary">
								<span class="title"><?php echo $lang['USER_MANAGEMENT'];?></span>
							</div>
							<div class="panel-content">
								<div>
									<div id="status"></div>
									<table id="users" class="row-border" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th><?php echo $lang['NAME'];?></th>
											<th><?php echo $lang['USERNAME'];?></th>
											<th><?php echo $lang['EMAIL'];?></th>
											<th><?php echo $lang['ACCEPTED_TERMS'];?></th>
											<th><?php echo $lang['ADMIN_USER'];?></th>
											<th><?php echo $lang['ACTION'];?></th>
										</tr>
									</thead>

									<tbody>
										<?php user_table(); ?>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- End Panel -->
				</div>
            </div>
        </div>
        <!-- End Page Content -->

	</div><!-- End Main Wrapper  -->
  
	<?php include('assets/comp/footer.php');?>
	
	<script>
	$(document).ready(function() {
    $('#users').DataTable();
	} );
		
	<?php 
	if(isset($_SESSION['action_saved'])){ echo 'swal("Awesome", "User privileges have been updated", "success")';}
	unset($_SESSION['action_saved']);
	?>		
	</script>
	

	
</body>
</html>
