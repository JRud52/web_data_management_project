<?php

class Login extends Controller {
    public function index() {
        $user = $this->model('User');
        $lockout = $this->model('Lockout');
        $logs = $this->model('Logs');

        if (!isset($_SESSION['login_attempts_count'])) {
            $_SESSION['login_attempts_count'] = 0;
            $_SESSION['login_attempts'] = array();
        }

        if (isset($_POST['username'])) {
            $user->username = $_POST['username'];
        }

        if (isset($_POST['password'])) {
            $user->password = $_POST['password'];
        }

        if (!$lockout->is_locked_out($_SERVER['REMOTE_ADDR'])) {
            $user->authenticate($_SERVER['REMOTE_ADDR']);

            if ($user->auth == TRUE) {
                $_SESSION['auth'] = true;
                $_SESSION['username'] = $_POST['username'];
                $_SESSION['id'] = $user->get_id($_POST['username']);
                $_SESSION['login_date'] = $logs->get_last_login($_POST['username']);
            }
            else {
                $_SESSION['login_attempts_count'] += 1;
                $message = 'The information provided was incorrect.';
            }
        } else {
            $message = 'Too many failed attempts. You have been locked out.';
        }

        if ($_SESSION['login_attempts_count'] >= 3) {
            $lockout->lockout($_SERVER['REMOTE_ADDR']);
            $_SESSION['login_attempts_count'] = 0;
        }

        $count = $logs->get_login_count($_SERVER['REMOTE_ADDR']);
        
        $this->view('home/login', ['message' => $message, 'count' => $count]);
    }
	
	public function register () {
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
                $this->view('home/register', ['message' => $message]);
            } else {
                $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
                if ($user->register($username, $password)){
                    $_SESSION['auth'] = true;
                    $this->view('home/register');
                } else {
                    $message = "A user with that username already exists";
                    $this->view('home/register', ['message' => $message]);
                }
            }
        }
        $this->view('home/register');
	}
}
