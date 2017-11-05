<?php

class Reminder extends Controller {

    public function index() {		
        $reminders = $this->model('Reminders');

        // put actual username here---------------------------------------------------------------------------------------------
        $reminders_list = $reminders->get_reminders($_SESSION['username']);
		
        $this->view('reminder/reminder_list', ['reminders' => $reminders_list]);
    }

    public function update_reminder($id) {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $reminders = $this->model('Reminders');
            $reminders->update_reminder($_POST['id'], $_POST['subject'], $_POST['desc']);
            header('Location:/reminder');
        } else {
            $reminders = $this->model('Reminders');
            $item = $reminders->get_reminder($id);
            
            $this->view('reminder/update', ['item' => $item] );
        }
    }

    public function remove_reminder($id) {
        $reminders = $this->model('Reminders');
        $reminders->remove_reminder($id);

        header('Location:/reminder');
    }

    public function create_reminder() {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $reminders = $this->model('Reminders');
            $reminders->create_reminder($_POST['subject'], $_POST['desc'], $_SESSION['username']);
            header('Location:/reminder');
        } else {
            $this->view('reminder/create');
        }
    }


}
