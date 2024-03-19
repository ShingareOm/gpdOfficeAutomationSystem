<?php include 'db_connect.php' ?>
 <div class="col-md-12">
        <div class="card card-outline card-success">
          <div class="card-header">
            <b>Project Progress</b>
            <div class="card-tools">
            	<button class="btn btn-flat btn-sm bg-gradient-success btn-success" id="print"><i class="fa fa-print"></i> Print</button>
            </div>
          </div>
          <div class="card-body p-0">
            <div class="table-responsive" id="printable">
              <table class="table m-0 table-bordered">
                <colgroup>
                  <col width="5%">
                  <col width="30%">
                  <col width="15%">
                  <col width="15%">
                  <col width="15%">
                  <col width="10%">
                  <col width="10%">
                </colgroup>
                <thead>
                  <th>#</th>
                  <th>Project</th>
                  <th>HOD Remark</th>
                  <th>Lipik Remark</th>
                  <th>Principal Remark</th>
                  <th>Progress</th>
                  <th>Status</th>
                </thead>
                <tbody>
                <?php
                $i = 1;
                $stat = array("Teacher","Hod","Lipik","Principal", "Done");
                $where = "";
                if($_SESSION['login_user_type_id'] == 2){
                  $where = " WHERE letter_creator_user_id = '{$_SESSION['login_user_id']}'";
                }
                elseif($_SESSION['login_user_type_id'] == 3){
                  $where = " WHERE letter_creator_user_id = '{$_SESSION['login_user_id']}' OR letter_creator_user_id IN ( SELECT user_id FROM gpd_teacher WHERE department_id = ( SELECT department_id FROM gpd_hod WHERE user_id = '{$_SESSION['login_user_id']}' ))";
                }
                elseif($_SESSION['login_user_type_id'] == 4){
                  $where = " WHERE letter_status = '3'";
                }
                elseif($_SESSION['login_user_type_id'] == 5){
                  $where = " WHERE letter_status = '4'";
                }
                $qry = $conn->query("SELECT * FROM gpd_letters $where order by letter_creator_user_id asc");
                while($row = $qry->fetch_assoc()):
                  $status = $row['letter_status'];
                  $prog = ($status == 4) ? 100 : ($status * 20); // Assuming Done is 100%
                
                ?>
                  <tr>
                      <td>
                         <?php echo $i++ ?>
                      </td>
                      <td>
                          <a>
                              <?php echo ucwords($row['letter_title']) ?>
                          </a>
                          <br>
                          <small>
                              Due: <?php echo date("Y-m-d",strtotime($row['letter_created_date'])) ?>
                          </small>
                      </td>
                      <?php
                      
                      $remarksss = "<span class='badge badge-danger'>Not Reviewed yet</span>"
                      ?>
                      <td class="text-center">
                      <?php 
                        echo (!empty(ucwords($row['letter_hod_remarks']))) ? ucwords($row['letter_hod_remarks']) : $remarksss;
                        ?>
                      </td>
                      <td class="text-center">
                      	<?php 
                        echo (!empty(ucwords($row['letter_lipik_remarks']))) ? ucwords($row['letter_lipik_remarks']) :  $remarksss;
                        ?>
                      </td>
                      <td class="text-center">
                      <?php 
                        echo (!empty(ucwords($row['letter_principal_remarks']))) ? ucwords($row['letter_principal_remarks']) : $remarksss;
                        ?>
                      </td>
                      <td class="project_progress">
                          <div class="progress progress-sm">
                              <div class="progress-bar bg-green" role="progressbar" aria-valuenow="57" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo $prog ?>%">
                              </div>
                          </div>
                          <small>
                              <?php echo $prog ?>% Complete
                          </small>
                      </td>
                      <td class="project-state">
                          <?php
                              echo "<span class='badge badge-success'>{$stat[$row['letter_status'] -1]}</span>";
                          ?>
                      </td>
                  </tr>
                <?php endwhile; ?>
                </tbody>  
              </table>
            </div>
          </div>
        </div>
        </div>
<script>
	$('#print').click(function(){
		start_load()
		var _h = $('head').clone()
		var _p = $('#printable').clone()
		var _d = "<p class='text-center'><b>Letter Progress Report as of (<?php echo date("F d, Y") ?>)</b></p>"
		_p.prepend(_d)
		_p.prepend(_h)
		var nw = window.open("","","width=900,height=600")
		nw.document.write(_p.html())
		nw.document.close()
		nw.print()
		setTimeout(function(){
			nw.close()
			end_load()
		},750)
	})
</script>