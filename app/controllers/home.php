<?php

class Home extends Controller {

    public function index($name = '') {		
        $user = $this->model('User');
		
        $this->view('home/index', ['message' => 'Welcome to the website!']);
    }

    public function login($name = '') {
        $logs = $this->model('Logs');

        $count = $logs->get_login_count($_SERVER['REMOTE_ADDR']);

        $this->view('home/login', ['count' => $count]);
    }

}
