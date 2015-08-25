<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 header('Access-Control-Allow-Origin: *'); 
 
 class Vehicle_details extends PIXOLO_Controller { 
 
 	 function __construct(){ 
 	 	 parent::__construct(); 
 
 	 	 $this->load->model('Vehicle_detail_model', 'model'); 
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

 	 public function vehicleinfo()
 	 {
 	 	$type = $this->input->get('type');
 	 	$location1 = $this->input->get('location1'); 	 
 	 	$location2 = $this->input->get('location2'); 	 	
 	 	$location1 = json_decode($location1);
 	 	$location2 = json_decode($location2);  	 
 	 	$latitude1 = $location1->latitude;
 	 	$longitude1 = $location1->longitude;
 	 	$latitude2 = $location2->latitude;
 	 	$longitude2 = $location2->longitude;
 	 	$message['json'] = $this->model->vehicleinfo($latitude1,$longitude1,$latitude2,$longitude2,$type);
 	 	$this->load->view('json', $message);

    	}

     public	function driverupdate()
     {
     	$id = $this->input->get('id');
     	$location = $this->input->get('location');
     	$location = json_decode($location); 	 
 	 	$latitude = $location->latitude;
 	 	$longitude = $location->longitude;     	
     	$message['json'] = $this->model->driverupdate($id,$latitude,$longitude);
     	$this->load->view('json', $message);
     }

     public	function driverstatus()
     {
     	$id = $this->input->get('id');
     	$location = $this->input->get('location');
     	$location = json_decode($location); 	 
 	 	$latitude = $location->latitude;
 	 	$longitude = $location->longitude;     	
     	$message['json'] = $this->model->driverstatus($id,$latitude,$longitude);
     	$this->load->view('json', $message);
     }

     public	function driveravailabilitystatus()
     {
     	$id = $this->input->get('id');
     	$location = $this->input->get('location');
     	$location = json_decode($location); 	 
 	 	$latitude = $location->latitude;
 	 	$longitude = $location->longitude;     	
     	$message['json'] = $this->model->driveravailabilitystatus($id,$latitude,$longitude);
     	$this->load->view('json', $message);
     }
 
 	 


 }