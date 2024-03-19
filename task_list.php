<?php include 'db_connect.php'; ?>
<div class="col-lg-12">
    <div class="card card-outline card-success">
        <div class="card-header">
            <div class="card-tools">
                <a class="btn btn-block btn-sm btn-default btn-flat border-primary" href="./index.php?page=new_letter"><i class="fa fa-plus"></i> Add New project</a>
            </div>
        </div>
        <div class="card-body">
            <table class="table tabe-hover table-condensed" id="list">
                <colgroup>
                    <col width="5%">
                    <col width="35%">
                    <col width="20%">
                    <col width="20%">
                    <col width="20%">
                </colgroup>
                <thead>
                    <tr>
                        <th class="text-center">#</th>
                        <th>Letter Title</th>
                        <th>Remark</th>
                        <th>Letter Started Date</th>
                        <th>Letter Status</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $i = 1;
                    $stat = array("Teacher", "hod", "lipik", "principal", "Done");
                    $where = "";
                    if ($_SESSION['login_user_type_id'] == 2) {
                        $where = " WHERE letter_creator_user_id = '{$_SESSION['login_user_id']}'";
                    } elseif ($_SESSION['login_user_type_id'] == 3) {
                        $where = " WHERE letter_status = '2' AND letter_creator_user_id = '{$_SESSION['login_user_id']}' OR letter_creator_user_id IN ( SELECT user_id FROM gpd_teacher WHERE department_id = ( SELECT department_id FROM gpd_hod WHERE user_id = '{$_SESSION['login_user_id']}' ))";
                    } elseif ($_SESSION['login_user_type_id'] == 4) {
                        $where = " WHERE letter_status = '3'";
                    } elseif ($_SESSION['login_user_type_id'] == 5) {
                        $where = " WHERE letter_status = '4'";
                    }
                    $qry = $conn->query("SELECT * FROM gpd_letters $where order by letter_creator_user_id asc");
                    while ($row = $qry->fetch_assoc()) :
                        $status = $row['letter_status'];
                        $prog = ($status == 4) ? 100 : ($status * 20); // Assuming Done is 100%
                    ?>
                        <tr>
                            <td class="text-center"><?php echo $i++ ?></td>
                            <td>
                                <p><b><?php echo ucwords($row['letter_title']) ?></b></p>
                            </td>
                            <td>
                                <p>
                                    <b>
                                        <?php
                                        if ($_SESSION['login_user_type_id'] == 1) {
                                            echo "Login as [HOD OR LIPIK OR PRINCIPAL] TO SEE REMARK";
                                        } else {
                                            echo (!empty(ucwords($row['letter_' . $stat[$_SESSION['login_user_type_id'] - 2] . '_remarks']))) ? ucwords($row['letter_' . $stat[$_SESSION['login_user_type_id'] - 2] . '_remarks']) : "<span class='badge badge-danger'>Remark Not Set</span>";
                                        }
                                        ?>
                                    </b>
                                </p>
                            </td>
                            <td><b><?php echo date("M d, Y", strtotime($row['letter_created_date'])) ?></b></td>
                            <td class="text-center">
                                <?php
                                echo "<span class='badge badge-success'>{$stat[$row['letter_status'] - 1]}</span>";
                                ?>
                            </td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<style>
    table p {
        margin: unset !important;
    }

    table td {
        vertical-align: middle !important
    }
</style>
<script>
    $(document).ready(function() {
        $('#list').dataTable()
        $('.new_productivity').click(function() {
            uni_modal("<i class='fa fa-plus'></i> New Remark for: " + $(this).attr('data-task'), "manage_progress.php?pid=" + $(this).attr('data-pid') + "&tid=" + $(this).attr('data-tid'), 'large')
        })
    })

    function delete_project($id) {
        start_load()
        $.ajax({
            url: 'ajax.php?action=delete_project',
            method: 'POST',
            data: {
                id: $id
            },
            success: function(resp) {
                if (resp == 1) {
                    alert_toast("Data successfully deleted", 'success')
                    setTimeout(function() {
                        location.reload()
                    }, 1500)

                }
            }
        })
    }
</script>
