<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 header('Access-Control-Allow-Origin: *'); 
 
 class Vehicle_info extends PIXOLO_Controller { 
 
 	 function __construct(){ 
 	 	 parent::__construct(); 
 
 	 	 $this->load->model('Vehicle_info_Model', 'model'); 
 	 } 

 	 public function index() 
 	 { 
 	 	 $message['json']=$this->model->get_all(); 
 	 	 $this->load->view('json', $message); 
 	 } 

 	 public function vehicleinfo()
 	 {
 	 	$type = $this->input->get('type');
 	 	$location = $this->input->get('location'); 	 	
 	 	$location = json_decode($location); 	 
 	 	$latitude = $location->latitude;
 	 	$longitude = $location->longitude;
 	 	$message['json'] = $this->model->vehicleinfo($latitude,$longitude,$type);
 	 	$this->load->view('json', $message);


 	 }

 }