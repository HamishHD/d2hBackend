<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 header('Access-Control-Allow-Origin: *'); 
 
 class Tblrecharge extends PIXOLO_Controller { 
 
 	 function __construct(){ 
 	 	 parent::__construct(); 
 
 	 	 $this->load->model('Tblrecharge_Model', 'model'); 
 	 } 

 	 public function index() 
 	 { 
 	 	 $message['json']=$this->model->get_all(); 
 	 	 $this->load->view('json', $message); 
 	 } 
 }