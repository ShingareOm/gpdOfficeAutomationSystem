<?php if(!isset($conn)){ include 'db_connect.php'; } 
?>
<div class="col-lg-12">
	<div class="card card-outline card-primary">
		<div class="card-body">
			<form action="" id="manage-project">
        <input type="hidden" name="letter_id" value="<?php echo isset($letter_id) ? $letter_id: '' ?>">
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="" class="control-label">Name</label>
					<input type="text" class="form-control form-control-sm" name="name" value="<?php echo isset($letter_id) ? $user_name." ".$user_surname : '' ?>">
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="" class="control-label">Subject</label>
					<input type="text" class="form-control form-control-sm" name="letter_title" value="<?php echo isset($letter_title) ? $letter_title : '' ?>">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
            <div class="form-group">
              <label for="" class="control-label">Date</label>
              <input type="date" class="form-control form-control-sm" autocomplete="off" name="letter_created_date" value="<?php echo isset($letter_created_date) ? date("Y-m-d",strtotime($letter_created_date)) : '' ?>">
            </div>
          </div>
        	<?php if($_SESSION['login_user_type_id'] == 1 ): ?>
           <div class="col-md-6">
            <div class="form-group">
              <label for="" class="control-label">To Principal</label>
              <select class="form-control form-control-sm select2" name="manager_id">
              	<option></option>
              	<?php 
              	$managers = $conn->query("SELECT *,concat(user_name,' ',user_surname) as name FROM gpd_users where user_type_id = 5 order by concat(user_name,' ',user_surname) asc ");
              	while($row= $managers->fetch_assoc()):
              	?>
              	<option value="<?php echo $row['user_id'] ?>" <?php echo isset($manager_id) && $manager_id == $row['user_id'] ? "selected" : '' ?>><?php echo ucwords($row['user_name'])." ".ucwords($row['user_surname'])?></option>
              	<?php endwhile; ?>
              </select>
            </div>
          </div>
      <?php else: ?>
      	<input type="hidden" name="manager_id" value="<?php echo $_SESSION['login_user_id'] ?>">
      <?php endif; ?>
        </div>
		<div class="row">
			<div class="col-md-10">
				<div class="form-group">
					<label for="" class="control-label">Description</label>
					<textarea name="letter_content" id="" cols="30" rows="10" class="summernote form-control">
						<?php echo isset($letter_content) ? $letter_content : '' ?>
					</textarea>
				</div>
			</div>
		</div>
        </form>
    	</div>
    	<div class="card-footer border-top border-info">
    		<div class="d-flex w-100 justify-content-center align-items-center">
    			<button class="btn btn-flat  bg-gradient-primary mx-2" form="manage-project">Save</button>
    			<button class="btn btn-flat bg-gradient-secondary mx-2" type="button" onclick="location.href='index.php?page=letter_list'">Cancel</button>
    		</div>
    	</div>
	</div>
</div>
<script>


	$('#manage-project').submit(function(e){


		var formData = new FormData($(this)[0]);
        formData.forEach(function(value, key){
            console.log(key + ": " + value);
        });

		e.preventDefault()
		start_load()

		$.ajax({
			url:'ajax.php?action=save_project',
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
						location.href = 'index.php?page=letter_list'
					},2000)
				}
				if(resp == 2){
					alert_toast('Error',"error");
					setTimeout(function(){
						location.href = 'index.php?page=save_project'
					},2000)
				}
			}
		})
	})
</script>