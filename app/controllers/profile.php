<?php

class Profile extends Controller {
    public function phone_list() {
        $list = $this->model('User');
		$this->view('profile/phone_list', ['list' => $list->get_phone_details()]);
    }

    public function add_client() {
        $client = $this->model('Client');

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {

            $message = '';

            if (!preg_match("/^[0-9]{3}-[0-9]{3}-[0-9]{4}$/", $_POST['phone_number'])){
                $message = $message . 'Phone number is the wrong format. ';
            }
            if (!preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/",$_POST['birthdate'])) {
                $message =  $message . 'Birthdate is the wrong format. ';
            }

            if ($client->name_exists($_POST['name'])){
                $this->view('profile/add_client', ['post_data' => $_POST, 'exists' => 'This client already exists, submit again to update them']);
            }
            else if ($message == '') {
                $client->add_client($_POST['name'], $_SESSION['id'], $_POST['birthdate'], $_POST['email'], $_POST['phone_number'], $_POST['province'], $_POST['city']);

                $this->view('profile/add_client', ['success' => 'Client Created']);
            } else {
                $this->view('profile/add_client', ['fail' => $message, 'post_data' => $_POST]);
            }
        }

        $this->view('profile/add_client');
    }

    public function update_client() {
        $client = $this->model('Client');

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {

            $message = '';

            if (!preg_match("/^[0-9]{3}-[0-9]{3}-[0-9]{4}$/", $_POST['phone_number'])){
                $message = $message . 'Phone number is the wrong format. ';
            }
            if (!preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/",$_POST['birthdate'])) {
                $message =  $message . 'Birthdate is the wrong format. ';
            }
            
            if ($message == '') {
                $client->update_client($_POST['name'], $_SESSION['id'], $_POST['birthdate'], $_POST['email'], $_POST['phone_number'], $_POST['province'], $_POST['city']);

                $this->view('profile/add_client', ['success' => 'Client Updated']);
            } else {
                $this->view('profile/add_client', ['fail' => $message, 'post_data' => $_POST]);
            }
        }

        $this->view('profile/add_client');
    }

    public function get_cities() {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $province_model = $this->model('Province');
            return json_encode($province_model->get_cities($_POST['province']));
        }
    }
}
