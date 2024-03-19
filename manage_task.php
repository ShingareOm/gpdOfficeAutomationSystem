<?php 
$stat = array("teacher","hod","lipik","principal");
include 'db_connect.php';
session_start();
if(isset($_GET['id'])){
	$qry = $conn->query("SELECT * FROM gpd_letters where letter_id = ".$_GET['id']);
	$row = $qry->fetch_assoc();
	foreach($row as $k => $v){
		$$k = $v;
	}
}
?>



<div class="container-fluid">
	<form action="" id="manage-task">
		<input type="hidden" name="letter_id" value="<?php echo isset($_GET['pid']) ? $_GET['pid'] : '' ?>">
		<div class="form-group">
			<label for="">Remark</label>
			<input type="text" class="form-control form-control-sm" name="<?php echo 'letter_'.$stat[$_SESSION['login_user_type_id'] - 2].'_remarks'; ?>" value="<?php echo isset($row['letter_'.$stat[$_SESSION['login_user_type_id'] - 2].'_remarks']) ? $row['letter_'.$stat[$_SESSION['login_user_type_id'] - 2].'_remarks'] : ''; ?>" required>
		</div>
		<input type="hidden" name="letter_status" value="<?php echo $row['letter_status'] + 1 ?>">
	</form>
</div>

<script>    




    $('#manage-task').submit(function(e){
    	e.preventDefault()
		var formData = new FormData($(this)[0]);
        formData.forEach(function(value, key){
            console.log(key + ": " + value);
        });

    	start_load()
    	$.ajax({
    		url:'ajax.php?action=save_task',
			data: new FormData($(this)[0]),
		    cache: false,
		    contentType: false,
		    processData: false,
		    method: 'POST',
		    type: 'POST',
			success:function(resp){
			console.log(resp);

				if(resp == 1){
					alert_toast('Data successfully saved',"success");
					setTimeout(function(){
						location.reload()
					},1500)
				}

			}
    	})
    })
</script>