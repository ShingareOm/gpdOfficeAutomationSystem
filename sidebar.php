  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <div class="dropdown">
    <a href="./" class="brand-link">
    <?php if($_SESSION['login_user_type_id'] == 1): ?>
        <h3 class="text-center p-0 m-0"><b>ADMIN</b></h3>
    <?php elseif($_SESSION['login_user_type_id'] == 2): ?>
        <h3 class="text-center p-0 m-0"><b>TEACHER</b></h3>
    <?php elseif($_SESSION['login_user_type_id'] == 3): ?>
        <h3 class="text-center p-0 m-0"><b>HOD</b></h3>
    <?php elseif($_SESSION['login_user_type_id'] == 4): ?>
        <h3 class="text-center p-0 m-0"><b>LIPIK</b></h3>
    <?php elseif($_SESSION['login_user_type_id'] == 5): ?>
        <h3 class="text-center p-0 m-0"><b>PRINCIPAL</b></h3>
    <?php endif; ?>
</a>
<!-- <link rel="stylesheet" href="./assets/plugins/fav-icon/style.css"> -->
    </div>
    <div class="sidebar pb-4 mb-4">
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column nav-flat" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item dropdown">
            <a href="./" class="nav-link nav-home">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>  
          <li class="nav-item">
            <a href="#" class="nav-link nav-Letters nav-Letters ">
              <i class="nav-icon fas fa-layer-group"></i>
              <p>
                Letters
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
            <?php if($_SESSION['login_user_type_id'] == 3 | $_SESSION['login_user_type_id'] == 2 ): ?>
              <li class="nav-item">
                <a href="./index.php?page=new_letter" class="nav-link nav-new_letter tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>Add New</p>
                </a>
              </li>
            <?php endif; ?>
              <li class="nav-item">
                <a href="./index.php?page=letter_list" class="nav-link nav-letter_list tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
            </ul>
          </li> 
          <?php if($_SESSION['login_user_type_id'] == 3 ): ?>
              <li class="nav-item">
                <a href="./index.php?page=own_letters" class="nav-link nav-new_letter tree-item">
                <i class="nav-icon fas fa-envelope"></i>
                  <p>Own Letters</p>
                </a>
              </li>
              <?php endif; ?>
              
              
              <?php if($_SESSION['login_user_type_id'] != 2 ): ?>
                <li class="nav-item">
                  <a href="./index.php?page=task_list" class="nav-link nav-task_list">
                    <i class="fas fa-tasks nav-icon"></i>
                    <p>Remark System</p>
                  </a>
                </li>
                <?php endif; ?>
         
           <li class="nav-item">
                <a href="./index.php?page=reports" class="nav-link nav-reports">
                  <i class="fas fa-th-list nav-icon"></i>
                  <p>Report</p>
                </a>
          </li>
           <li class="nav-item">
                <a href="./index.php?page=print_letter" class="nav-link nav-   tree-item">
                  <i class="nav-icon fas fa-print"></i>
                  <p>Print letter</p>
                </a>
          </li>
          <?php if($_SESSION['login_user_type_id'] == 1): ?>
          <li class="nav-item">
            <a href="#" class="nav-link nav-edit_user">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Users
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.php?page=new_user" class="nav-link nav-new_user tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>Add New</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index.php?page=user_list" class="nav-link nav-user_list tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
            </ul>
          </li>
        <?php endif; ?>
        </ul>
      </nav>
    </div>
  </aside>
  <script>
  	$(document).ready(function(){
      var page = '<?php echo isset($_GET['page']) ? $_GET['page'] : 'home' ?>';
  		var s = '<?php echo isset($_GET['s']) ? $_GET['s'] : '' ?>';
      if(s!='')
        page = page+'_'+s;
  		if($('.nav-link.nav-'+page).length > 0){
             $('.nav-link.nav-'+page).addClass('active')
  			if($('.nav-link.nav-'+page).hasClass('tree-item') == true){
            $('.nav-link.nav-'+page).closest('.nav-treeview').siblings('a').addClass('active')
  				$('.nav-link.nav-'+page).closest('.nav-treeview').parent().addClass('menu-open')
  			}
        if($('.nav-link.nav-'+page).hasClass('nav-is-tree') == true){
          $('.nav-link.nav-'+page).parent().addClass('menu-open')
        }

  		}
     
  	})
  </script>