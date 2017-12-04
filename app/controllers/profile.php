<?php

class Profile extends Controller {
    public function phone_list() {
        $list = $this->model('User');
		$this->view('profile/phone_list', ['list' => $list->get_phone_details()]);
    }

    public function add_client() {



        $this->view('profile/add_client');
    }

    public function get_cities() {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $province_model = $this->model('Province');
            return json_encode($province_model->get_cities($_POST['province']));
        }
    }
}