<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 class Register_model extends PIXOLO_Model 
 { 
	 public $_table = 'register';  
 
 	 //Write functions here 

 	 public function driverlogin($phone)
 	 {
 	 	$query = $this->db->query("SELECT * FROM `register` WHERE `phone`=$phone");
 		if ($query->num_rows() > 0)
 			{
	 				$query = $this->db->query("SELECT `register`.`firstname`, `register`.`lastname`, `register`.`phone`,`register`.`type`, `states`.`state_name`, `city_description`.`city`, `suburb`.`suburb_name`, `register`.`pincode`, `register`.`landline`, `register`.`taxi_type` FROM `register` 
	INNER JOIN `states` ON `register`.`state`=`states`.`id`
	INNER JOIN `city_description` ON `register`.`city`=`city_description`.`id`
	INNER JOIN `suburb` ON `register`.`suburb`= `suburb`.`id`
	WHERE `register`.`phone`= $phone")->result();

	 				return $query;
 		     
 			}
 		else
 		{
 			return false;
 		}

 		
 	 }


 	 public function vendorlogin($phone)
 	 {
 	 	$query = $this->db->query("SELECT * FROM `register` WHERE `phone`=$phone");
 		
 		if ($query->num_rows() > 0)
 			{
 			 
 		     $query = $this->db->query("SELECT `id`, `firstname`, `lastname` FROM `register` WHERE `phone`= $phone")->row();
 		     $query->type='vendor';
 		     return $query;

 			}
 		else
 		   {
 		   	 $query = $this->db->query("SELECT * FROM `vehicle_details` WHERE `sub_vendor_contact`=$phone");

 		   	 if ($query->num_rows() > 0)
 		   	 {
 		   	 	$query = $this->db->query("SELECT `vehicle_details`.`id`, `register`.`firstname`, `register`.`lastname` FROM `vehicle_details` INNER JOIN `register` ON `vehicle_details`.`pid`=`register`.`id`
             	WHERE `vehicle_details`.`sub_vendor_contact`= $phone")->row();
             $query->type='driver'; 		     
 		     return $query; 		   	 	
 		   	 }

 		   	 else
 		   	 {
 		   	 	return false;

 		   	 }
             
 		   }



 		 
 	 }


 } 
 
 ?>