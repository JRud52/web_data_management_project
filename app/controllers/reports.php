<?php

class Reports extends Controller {
    public function login_report() {
        $logs = $this->model('Logs');
		$this->view('reports/login_report', ['logs' => $logs->get_logs()]);
    }
}