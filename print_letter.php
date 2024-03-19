<?php include 'db_connect.php' ?>
 <div class="col-md-12">
        <div class="card card-outline card-success">
          <div class="card-header">
            <b>Letter Progress</b>
          </div>
          <div class="card-body p-0">
            <div class="table-responsive" id="printable">
              <table class="table m-0 table-bordered">
                <colgroup>
                  <col width="7%">
                  <col width="31%">
                  <col width="31%">
                  <col width="10%">
                  <col width="21%">
                </colgroup>
                <thead>
                  <th>#</th>
                  <th>Letter  </th>
                  <th>Progress</th>
                  <th>Status</th>
                  <th>Print</th>
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
                              echo "<span class='badge badge-success'>{$stat[$row['letter_status'] -1 ]}</span>";
                          ?>
                      </td>
                      <td>
                        <div class="card-tools">
                            <button class="btn print-btn mysersonal btn-flat btn-sm bg-gradient-success btn-success" data-id="<?php echo $row['letter_id']?>" id="<?php echo "data".$i ?>"><i class="fa fa-print"></i> Print</button>
                        </div>
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

         
$(document).ready(function() {
    $('.print-btn').click(function() {
        var letter_id = $(this).data('id');
        $.ajax({
            url: 'ajax.php?action=print_letter',
            method: 'POST',
            data: { letter_id: letter_id },
            success: function(response) {
                console.log("printing it");
                var newWindow = window.open("","","width=900,height=600")
                newWindow.document.open();
                newWindow.document.write(response);
                newWindow.document.close();
                newWindow.onload = function() {
                    newWindow.print();
                };
                setTimeout(function(){
		            	newWindow.close()
		            	end_load()
	            	},1000)
            },
        });
    });
});

</script>