<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 class Inquiry_model extends PIXOLO_Model 
 { 
	 public $_table = 'inquiry';   	
	  //Write functions here 
 	 public function Inquiry($vehicleid,$name, $email, $mobile, $ip, $fromloc, $toloc)
 	 {
 	 	$query = $this->db->query("INSERT INTO `inquiry` (`vehicleid`, `name`, `email`, `mobile`, `ip`, `date`, `fromloc`, `toloc`) VALUES ('$vehicleid', '$name', '$email', '$mobile', '$ip', NOW(), '$fromloc', '$toloc')");

 	 	if($query==true)
 	 	{
 	 		$sql = $this->db->query("SELECT `sub_vendor_contact`, `v_type`, `model`, `pid` FROM `vehicle_details` WHERE `id`= $vehicleid ")->row(); 
 	 		

 	 		$query = $this->db->query("INSERT INTO `cust_inquiry` (`name`, `email`, `mobile`, `ip`, `date`, `v_rto`, `v_type`, `v_phone`, `v_name`, `v_model`, `pid`) VALUES ('$name', '$email', '$mobile', '$ip', NOW(), '$sql->rtono', '$sql->v_type', '$sql->contact', '$sql->vehiclename', '$sql->model', '$sql->pid')");

 	 		if($query==true)	
 	 		{
 	 			$query1=$this->db->query ("UPDATE vehicle_details SET `balance` = `balance`-20, `sms_count` = `sms_count`+1 WHERE `id`=$vehicleid" );
 	 		}
 	 	
 	 	}
 	    return $query;
 	    
 	 }


 	 public function inquiriesbydriverid($id)
 	 {
 	 	$query = $this->db->query("SELECT `cust_inquiry`.`inq_no`, `cust_inquiry`.`name`, `cust_inquiry`.`mobile`, `cust_inquiry`.`date` FROM `cust_inquiry` WHERE `cust_inquiry`.`pid`= $id")->result();
 	 	return $query;
 	 }
 } 
 
 ?>