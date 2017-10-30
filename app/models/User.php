<?php

class User {

    public $username;
    public $password;
    public $auth = false;

    public function __construct() {
        
    }

    public function authenticate($address) {
		$db = db_connect();
        $statement = $db->prepare("SELECT username, password_hash FROM users
                                WHERE username=:username;");
        $statement->bindValue(':username', $this->username);
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

        $success = false;
		if ($rows) {
            if (password_verify($this->password, $rows[0]['password_hash'])){
                $this->auth = true;
                $_SESSION['username'] = $rows[0]['username'];
                $success = true;
            }
		}

        $statement = $db->prepare("INSERT INTO activity_logs (username, is_login, address, success) VALUES (:username, true, :address, :success);");
        $statement->bindValue(':username', $this->username);
        $statement->bindValue(':address', $address);
        $statement->bindValue(':success', $success);
        $statement->execute();
    }
	
	public function register ($username, $password) {
		$db = db_connect();
        $statement = $db->prepare("SELECT * FROM users WHERE username=:username;");
        $statement->bindValue(':username', $username);
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

        if ($rows) {
            return false;
        }
        else {
            $statement = $db->prepare("INSERT INTO users (username, password_hash)"
                    . " VALUES (:username, :password_hash); ");

            $statement->bindValue(':username', $username);
            $statement->bindValue(':password_hash', $password);
            $statement->execute();
            $_SESSION['username'] = $username;
        }
	}

    public function logout ($address, $username) {
        $db = db_connect();
        $statement = $db->prepare("INSERT INTO activity_logs (username, is_login, address, success) VALUES (:username, false, :address, true);");
        $statement->bindValue(':username', $username);
        $statement->bindValue(':address', $address);
        $statement->execute();
    }
}
