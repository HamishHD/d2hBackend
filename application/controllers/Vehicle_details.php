<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 header('Access-Control-Allow-Origin: *'); 
 
 class Vehicle_details extends PIXOLO_Controller { 
 
 	 function __construct(){ 
 	 	 parent::__construct(); 
 
 	 	 $this->load->model('Vehicle_detail_Model', 'model'); 
 	 } 

 	 public function index() 
 	 { 
 	 	 $message['json']=$this->model->get_all(); 
 	 	 $this->load->view('json', $message); 
 	 } 
 	 public function positionofdriver()
 	 {
 	 	$location = $this->input->get('location');
 	 	$type = $this->input->get('type');
 	 	$data = json_decode($location); 	 
 	 	$latitude = $data->latitude;
 	 	$longitude = $data->longitude;
 	 	$message['json'] = $this->model->positionofdriver($latitude,$longitude,$type);
 	 	$this->load->view('json', $message);

 	 }
 }