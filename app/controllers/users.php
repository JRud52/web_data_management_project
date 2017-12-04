<?php

class Users extends Controller {
	public function add_user () {
		$user = $this->model('User');

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $username = $_POST['username'];
            $password = $_POST['password'];
            $pass_length = true;

            if (strlen($password) < 8){
                $pass_length = false;
            }

            $pass_array = str_split($password);

            $number = false;
            $uppercase = false;
            $lowercase = false;
            $symbol = false;

            foreach($pass_array as $value){
                if (is_numeric($value)){
                    $number = true;
                }
                elseif (ctype_lower($value)){
                    $lowercase = true;
                }
                elseif (ctype_upper($value)){
                    $uppercase = true;
                }
                elseif (ctype_punct($value)){
                    $symbol = true;
                }
            }

            if (!($pass_length && $number && $lowercase && $uppercase && $symbol)){
                $message = "Passwords must contain at least one number, lowercase letter, uppercase letter, and symbol. They must also be at least 8 characters long.";
                $this->view('/users/add_user', ['message' => $message]);
            } else {
                $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
                if ($user->register($username, $password)){
                    $_SESSION['auth'] = true;
                    $this->view('/users/add_user');
                } else {
                    $message = "A user with that username already exists";
                    $this->view('/users/add_user', ['message' => $message]);
                }
            }
        }
        $this->view('users/add_user');
	}
}
