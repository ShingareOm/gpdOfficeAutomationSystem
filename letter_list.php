<?php include'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
   		<?php 
    		$array = [1, 4, 5];
    		if (!in_array($_SESSION['login_user_type_id'], $array)): ?>
    			<div class="card-tools">
        			<a class="btn btn-block btn-sm btn-default btn-flat border-primary" href="./index.php?page=new_letter">
		           		<i class="fa fa-plus"></i> Add New project
        			</a>
    			</div>
    	<?php endif; ?>
		</div>

		<div class="card-body">
			<table class="table tabe-hover table-condensed" id="list">
				<colgroup>
					<col width="5%">
					<col width="35%">
					<col width="15%">
					<col width="15%">
					<col width="20%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th>Project</th>
						<th>Date Started</th>
						<th>Due Date</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php
					 $i = 1;
					 $stat = array("","hod","lipik","principal","Done");
					 $where = "";
					 if($_SESSION['login_user_type_id'] == 2){
						 $where = " WHERE letter_creator_user_id = '{$_SESSION['login_user_id']}'";
					 }
					 elseif($_SESSION['login_user_type_id'] == 3){
						 $where = " WHERE letter_creator_user_id IN ( SELECT user_id FROM gpd_teacher WHERE department_id = ( SELECT department_id FROM gpd_hod WHERE user_id = '{$_SESSION['login_user_id']}' ))";
					 }
					 elseif($_SESSION['login_user_type_id'] == 4){
						 $where = " WHERE letter_status = '3'";
					 }
					 elseif($_SESSION['login_user_type_id'] == 5){
						 $where = " WHERE letter_status = '4'";
					 }
					 $qry = $conn->query("SELECT * FROM gpd_letters $where order by letter_id asc");
					while($row= $qry->fetch_assoc()):
						$trans = get_html_translation_table(HTML_ENTITIES,ENT_QUOTES);
						unset($trans["\""], $trans["<"], $trans[">"], $trans["<h2"]);
						$desc = strtr(html_entity_decode($row['letter_content']),$trans);
						$desc=str_replace(array("<li>","</li>"), array("",", "), $desc);

					 	// $tprog = $conn->query("SELECT * FROM task_list where project_id = {$row['id']}")->num_rows;
		                // $cprog = $conn->query("SELECT * FROM task_list where project_id = {$row['id']} and status = 3")->num_rows;
						// $prog = $tprog > 0 ? ($cprog/$tprog) * 100 : 0;
		                // $prog = $prog > 0 ?  number_format($prog,2) : $prog;
		                // $prod = $conn->query("SELECT * FROM user_productivity where project_id = {$row['id']}")->num_rows;
						// if($row['status'] == 0 && strtotime(date('Y-m-d')) >= strtotime($row['start_date'])):
						// if($prod  > 0  || $cprog > 0)
		                //   $row['status'] = 2;
		                // else
		                //   $row['status'] = 1;
						// elseif($row['status'] == 0 && strtotime(date('Y-m-d')) > strtotime($row['end_date'])):
						// $row['status'] = 4;
						// endif;
					?>
					<tr>
						<th class="text-center"><?php echo $i++ ?></th>
						<td>
							<p><b><?php echo ucwords($row['letter_title']) ?></b></p>
							<p class="truncate"><?php echo strip_tags($desc) ?></p>
						</td>
						<td><b><?php echo date("M d, Y",strtotime($row['letter_created_date'])) ?></b></td>
						<td><b><?php echo date("M d, Y",strtotime($row['letter_created_date'])) ?></b></td>
						<td class="text-center">
							<?php
							//   if($stat[$row['status']] =='hod'){
							//   	echo "<span class='badge badge-secondary'>{$stat[$row['status']]}</span>";
							//   }elseif($stat[$row['status']] =='lipik'){
							//   	echo "<span class='badge badge-primary'>{$stat[$row['status']]}</span>";
							//   }elseif($stat[$row['status']] =='principal'){
							//   	echo "<span class='badge badge-info'>{$stat[$row['status']]}</span>";
							//   }elseif($stat[$row['status']] =='reject'){
							//   	echo "<span class='badge badge-danger'>{$stat[$row['status']]}</span>";
							//   }elseif($stat[$row['status']] =='Done'){
							//   	echo "<span class='badge badge-success'>{$stat[$row['status']]}</span>";
							//   }
							?>
						</td>
						<td class="text-center">
							<button type="button" class="btn btn-default btn-sm btn-flat border-info wave-effect text-info dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		                      Action
		                    </button>
		                    <div class="dropdown-menu" style="">
		                      <a class="dropdown-item view_project" href="./index.php?page=view_project&id=<?php echo $row['letter_id'] ?>" data-id="<?php echo $row['letter_id'] ?>">View</a>
		                      <div class="dropdown-divider"></div>
		                      <?php if($_SESSION['login_user_type_id'] != 3): ?>
		                      <a class="dropdown-item" href="./index.php?page=edit_project&id=<?php echo $row['letter_id'] ?>">Edit</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item delete_project" href="javascript:void(0)" data-id="<?php echo $row['letter_id'] ?>">Delete</a>
		                  <?php endif; ?>
		                    </div>
						</td>
					</tr>	
				<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<style>
	table p{
		margin: unset !important;
	}
	table td{
		vertical-align: middle !important
	}
</style>
<script>
	$(document).ready(function(){
		$('#list').dataTable()
	
	$('.delete_project').click(function(){
	_conf("Are you sure to delete this letter?","delete_project",[$(this).attr('data-id')])
	})
	})
	function delete_project($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_project',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully deleted",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}
		})
	}
</script>