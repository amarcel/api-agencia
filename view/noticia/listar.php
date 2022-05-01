<?php
include '../../control/NoticiaControl.php';
$noticiaControl = new NoticiaControl();

header('Content-Type: application/json');

foreach($noticiaControl->findAll() as $valor){
	echo json_encode($valor);
}


?>