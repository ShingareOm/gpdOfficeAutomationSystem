<?php include('db_connect.php') ?>
<?php
$twhere ="";
if($_SESSION['login_user_type_id'] != 1)
  $twhere = "  ";
?>
<!-- Info boxes -->
 <div class="col-12">
          <div class="card">
            <div class="card-body">
              Welcome <?php echo $_SESSION['login_user_name']." ".$_SESSION['login_user_surname'] ?>!
            </div>
          </div>
  </div>
  <hr>

        
      <div class="row">
        <div class="col-md-8">
        <div class="card card-outline card-success">
          <div class="card-header">
            <b>Letter Progress</b>
          </div>
          <div class="card-body p-0">
            <div class="table-responsive">
              <table class="table m-0 table-hover">
                <colgroup>
                  <col width="5%">
                  <col width="30%">
                  <col width="35%">
                  <col width="15%">
                  <col width="15%">
                </colgroup>
                <thead>
                  <th>#</th>
                  <th>Letter Title</th>
                  <th>Progress</th>
                  <th>Status</th>
                  <th></th>
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
                  // $where = " WHERE letter_creator_user_id = '{$_SESSION['login_user_id']}'";
                  $where = " WHERE letter_status = 2 AND letter_creator_user_id IN ( SELECT user_id FROM gpd_teacher WHERE department_id = ( SELECT department_id FROM gpd_hod WHERE user_id = '{$_SESSION['login_user_id']}' ))";

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
                              Date: <?php echo date("Y-m-d",strtotime($row['letter_created_date'])) ?>
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
                              echo "<div class='badge badge-success '>{$stat[$row['letter_status'] - 1]}</div>";
                          ?>
                      </td>
                      <td>
                        <a class="btn btn-primary btn-sm" href="./index.php?page=view_letter&id=<?php echo $row['letter_id'] ?>">
                              <i class="fas fa-folder">
                              </i>
                              View
                        </a>
                      </td>
                  </tr>
                <?php endwhile; ?>
                </tbody>  
              </table>
            </div>
          </div>
        </div>
        </div>
        <div class="col-md-4">
          <div class="row">
          <div class="col-12 col-sm-6 col-md-12">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM gpd_letters $where")->num_rows; ?></h3>

                <p>Total Letters</p>
              </div>
              <div class="icon">
                <i class="fa fa-layer-group"></i>
              </div>
            </div>
          </div>
      
          </div>
      </div>
        </div>
      </div>
