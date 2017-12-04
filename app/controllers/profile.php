<?php

class Profile extends Controller {
    public function phone_list() {
        $list = $this->model('User');
		$this->view('profile/phone_list', ['list' => $list->get_phone_details()]);
    }
}