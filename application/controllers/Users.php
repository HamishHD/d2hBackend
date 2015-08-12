<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 header('Access-Control-Allow-Origin: *'); 
 
 class Users extends PIXOLO_Controller { 
 
 	 function __construct()
 	 { 
 	 	 parent::__construct(); 
 
 	 	 $this->load->model('User_Model', 'model'); 
 	 } 

 	 public function index() 
 	 { 
 	 	 $message['json']=$this->model->get_all(); 
 	 	 $this->load->view('json', $message); 
 	 } 

 	 public function addusers()
 	 { 	    
 	 	$data = $this->input->get('data');
 	 	$data = json_decode($data);
 	 	$fullname = $data->fullname;
 	 	$mobileno = $data->mobileno;
 	 	$message['json'] = $this->model->addusers($fullname,$mobileno);
 	 	$this->load->view('json', $message);
 	 }
 }