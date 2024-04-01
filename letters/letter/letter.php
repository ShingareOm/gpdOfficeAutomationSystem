<?php 

date_default_timezone_set('UTC');

function dataUri($file) {
  return file_exists($file) ? 'data:image/png;base64,' . base64_encode(file_get_contents($file)) : null;
}

function template($data) {

  $custom   = __DIR__ . '/../config/template.php';
  $default  = __DIR__ . '/template.php';
  $file     = file_exists($custom) ? $custom : $default;

  ob_start();
  extract($data);
  require($file);
  $template = ob_get_contents();
  ob_end_clean();

  return $template;

}

$config    = __DIR__ . '/../config/config.php';
$theme     = __DIR__ . '/../config/styles.css';
$signature = __DIR__ . '/../config/signature.png';


$data = array_replace_recursive(require(__DIR__ . '/defaults.php'), file_exists($config) ? require($config) : []);


setlocale (LC_ALL, $data['locale']);
$data['date'] = strftime($data['dateFormat']);
$styles  = file_get_contents(__DIR__ . '/defaults.css');
$styles .= file_exists($theme) ? PHP_EOL . file_get_contents($theme) : null;
$favicon = dataUri(__DIR__ . '/favicon.png');
$title = $data['title'];
$template = template($data);