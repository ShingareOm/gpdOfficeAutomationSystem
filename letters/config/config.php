<?php 

$departments = array(
  1 => "Computer Engineering",
  7 => "Automobile Engineering",
  3 => "Civil Engineering",
  2 => "Dress Designing and Garment Manufacture",
  6 => "Electrical Engineering",
  5 => "Electronics and Tele-Communication Engineering",
  4 => "Mechanical Engineering"
);

$roles = array(
  2 => "Teacher",
  3 => "HOD",
);

return [
  'title'      => $letter_title,
  'dateFormat' => '%d %B %Y',
  'rdate'  => $letter_created_date, 
  'department' => isset($departments[$department_id]) ? $departments[$department_id] : '',
  'role'       => isset($roles[$user_type_id]) ? $roles[$user_type_id] : '',
  'collagename'=> 'शासकीय तंत्रनिकेतन, धाराशिव',
  'name'       => $user_name . " " . $user_surname,
  'email'      => $user_email,
  'closing'    => 'धन्यवाद,<br>',
  'placeholders' => [
    'address' => 'शासकीय तंत्रनिकेतन, धाराशिव',
    'subject' => $letter_title,
    'text'    => $letter_content
  ]
];
