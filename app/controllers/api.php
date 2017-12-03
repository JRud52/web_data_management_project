<?php

class API extends Controller {

    public function api1($username = '') {
        $user = $this->model('User');
        $details = $user->get_all_details();

        for ($i = 0; $i < sizeof($details); $i += 1) {
            if ($details[$i]['username'] == $username) {
                $details = $details[$i];
            }
        }

        $api_json = json_encode($details);
        
        echo "<pre>";
        print_r($api_json);
        
        return $api_json;
		
    }

}
