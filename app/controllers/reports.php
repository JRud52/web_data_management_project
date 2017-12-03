<?php

class Reports extends Controller {
    public function login_report() {
        $logs = $this->model('Logs');
		$this->view('reports/login_report', ['logs' => $logs->get_logs()]);
    }

    public function user_report() {
        $user = $this->model('User');
        $this->view('reports/user_report', ['users' => $user->get_all_users()]);
    }

    public function join_report() {
        $user = $this->model('User');
        $this->view('reports/join_report', ['data' => $user->get_all_details()]);
    }
}