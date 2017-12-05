<?php

class User {

    public $username;
    public $password;
    public $auth = false;

    public function __construct() {
        
    }

    public function authenticate($address) {
		$db = db_connect();
        $statement = $db->prepare("SELECT username, password_hash, acl FROM users
                                WHERE username=:username;");
        $statement->bindValue(':username', $this->username);
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

        $success = false;
		if ($rows) {
            if (password_verify($this->password, $rows[0]['password_hash'])){
                $this->auth = true;
                $_SESSION['username'] = $rows[0]['username'];
                $_SESSION['acl'] = $rows[0]['acl'];
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
            return true;
        }
	}

    public function logout ($address, $username) {
        $db = db_connect();
        $statement = $db->prepare("INSERT INTO activity_logs (username, is_login, address, success) VALUES (:username, false, :address, true);");
        $statement->bindValue(':username', $username);
        $statement->bindValue(':address', $address);
        $statement->execute();
    }

    public function get_all_users() {
		$db = db_connect();
        $statement = $db->prepare("SELECT * FROM users;");
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

        return $rows;
    }
    
    public function get_all_details() {
		$db = db_connect();
        $statement = $db->prepare("SELECT users.username, personal_details.first_name, personal_details.last_name, personal_details.email, personal_details.birthdate, personal_details.phone_number, COUNT(reminders.id) as reminder_count FROM users, personal_details, reminders WHERE users.username=personal_details.username AND users.username=reminders.username GROUP BY users.username;");
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

        return $rows;
    }

    public function get_phone_details() {
		$db = db_connect();
        $statement = $db->prepare("SELECT first_name, last_name, phone_number FROM personal_details;");
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

        return $rows;
    }

    public function get_id($username) {
		$db = db_connect();
        $statement = $db->prepare("SELECT id FROM users WHERE username=:username;");
        $statement->bindValue(':username', $username);
        $statement->execute();
        $rows = $statement->fetch(PDO::FETCH_ASSOC);

        return $rows['id'];
    }

}
