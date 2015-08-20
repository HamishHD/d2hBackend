<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 header('Access-Control-Allow-Origin: *'); 
 
 class Inquiry extends PIXOLO_Controller { 
 
 	 function __construct(){ 
 	 	 parent::__construct();  
 	 	 $this->load->model('Inquiry_model','model'); 
 	 } 

 	 public function index() 
 	 { 
 	 	 $message['json']=$this->model->get_all(); 
 	 	 $this->load->view('json', $message); 
 	 } 

 	 public function Inquiry()
 	 {
 	 	$data = $this->input->get('data');
 	 	$data = json_decode($data); 	  
 	 	$vehicleid = $data->vehicleid;
 	 	$name = $data->name;
 	 	$email = $data->email;
 	 	$mobile = $data->mobile; 
 	 	$ip = $data->ip;
 	 	$fromloc = $data->fromloc;
 	 	$toloc = $data->toloc;
 	 	$message['json'] = $this->model->Inquiry($vehicleid, $name, $email, $mobile, $ip, $fromloc, $toloc);
 	 	$this->load->view('json', $message);
 	 }

 	 public function inquiriesbydriverid()
 	 {
 	 	$id = $this->input->get('id');
 	 	$message['json'] = $this->model->inquiriesbydriverid($id);
 	 	$this->load->view('json', $message); 
 	 }
 }