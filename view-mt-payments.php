<?php 
include('auth/startup.php');
include('data/data-functions.php');
//SITE SETTINGS
list($meta_title, $meta_description, $site_title, $site_email) = all_settings();
//REDIRECT ADMIN
if($admin_user!='1'){header('Location: dashboard');}
$transaction_id =  filter_input(INPUT_GET, 'tid', FILTER_SANITIZE_STRING);
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
							<?php include('assets/comp/mt-stat-boxes.php');?>
							<div class="row">
							<!-- Start Panel -->
								<div class="col-lg-12">
									<div class="panel">
										<div class="panel-heading panel-primary">
											<span class="title"><?php echo $lang['VIEWING']. ' '. $lang['TRANSACTION_ID'] .': MT-'.$transaction_id;?></span>
										</div>
										<div class="panel-content">
											<div id="status"></div>
												<table id="sales" class="row-border" cellspacing="0" width="100%">
												<thead>
													<tr>
														<th><?php echo $lang['AFFILIATE'];?></th>
														<th><?php echo $lang['LEVEL_TIER'];?></th>
														<th><?php echo $lang['COMISSION'];?></th>
														<th><?php echo $lang['NET_EARNINGS'];?></th>
														<th><?php echo $lang['DATETIME'];?></th>
														<th><?php echo $lang['ACTION'];?></th>
													</tr>
												</thead>

												<tbody>
													<?php mt_payments_table($transaction_id); ?>
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
	$(document).ready( function() {
    $('#sales').dataTable({
        /* Disable initial sort */
        "aaSorting": []
    });
	})	
		
	
	<?php 
	if(isset($_SESSION['action_deleted'])){ echo 'swal("Deleted", "This has been deleted as requested!", "success")';}
	unset($_SESSION['action_deleted']);
	?>	
	</script>
	

	
</body>
</html>
