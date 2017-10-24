<?php

class Login extends Controller {
    public function index() {
        $user = $this->model('User');

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

        $user->authenticate();

        if ($user->auth == TRUE) {
            $_SESSION['auth'] = true;
        }
        else {
            $_SESSION['login_attempts_count'] += 1;
            array_push($_SESSION['login_attempts'], array($_POST["username"], $_POST['password']));
        }
        
        header('Location: /home');
    }
	
	public function register () {
		$user = $this->model('User');

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (isset($_SESSION['register_complete']) && $_SESSION['register_complete'] == false){
                echo "<p>A user with that username already exists</p>";
                session_unset($_SESSION['register_complete']);
            }
            else if (isset($_SESSION['valid_pass']) && $_SESSION['valid_pass'] == false){
                echo "<p>Passwords must contain at least one number, lowercase letter, uppercase letter, and symbol. They must also be at least 8 characters long.</p>";
                session_unset($_SESSION['valid_pass']);
            }
            else {
                $username = $_POST['username'];
                $password = $_POST['password'];
                $_SESSION['valid_pass'] = true;

                if (strlen($password) < 8){
                    $_SESSION['valid_pass'] = false;
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

                if (!($number && $lowercase && $uppercase && $symbol)){
                    $_SESSION['valid_pass'] = false;
                }

                if ($_SESSION['valid_pass']) {
                    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
                    $user->register($username, $password);

                    if($_SESSION['register_complete']) {
                        $_SESSION['auth'] = true;
                    }
                }
            }
        }
		
		$this->view('home/register');
	}
}
