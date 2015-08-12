<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 class User_Model extends PIXOLO_Model 
 { 

 
 	 //Write functions here 
 	public function addusers($fullname,$mobileno)
 	{
 		$query = $this->db->query("SELECT * FROM `users` WHERE `mobileno`=$mobileno");
 		if ($query->num_rows() > 0)
 			{
 				return false;
 			}
 		else
 		   {
             $query = $this->db->query("INSERT INTO `users` (`fullname`, `mobileno`) VALUES ('$fullname', '$mobileno')");
 		     $id = $this->db->insert_id();
 		     $query = $this->db->query("SELECT * FROM `users` WHERE `id`= $id")->row();
 		     return $query;
 		   }


    }  
 }
 
 ?>