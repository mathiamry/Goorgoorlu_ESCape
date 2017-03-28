<?php
include 'controler.php';


		function gettarif($id){
		global $connexion;

	
		$data= array();
		$q = 'select *  from  goorgoorlukat where id_Gg='.$id;
		$result= mysqli_query($connexion,$q);
	

		while ($row = $result->fetch_assoc()) {


			$tarif=$row['tarif'];
	
           
           $data[]=$tarif;
		}

			echo json_encode($data);
		}


?>