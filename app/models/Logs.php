<?php

class Logs {
    public function __construct() {
        
    }

    public function get_logs(){
        $db = db_connect();
        $statement = $db->prepare("SELECT * FROM activity_logs ORDER BY date_time DESC;");
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

        return $rows;
    }

    public function get_login_count($address){
        $db = db_connect();
        $statement = $db->prepare("SELECT COUNT(date_time) AS count FROM activity_logs WHERE address=:address AND is_login=1 AND DATE_FORMAT(date_time, '%y-%m-%d') = DATE_FORMAT(:today_date, '%y-%m-%d');");
        $statement->bindValue(':address', $address);

        $date_time = new DateTime();
        $date_time->sub(date_interval_create_from_date_string('5 hours'));

        $statement->bindValue(':today_date', $date_time->format('Y-m-d'));
        $statement->execute();
        $rows = $statement->fetch(PDO::FETCH_ASSOC);

        return $rows['count'];
    }

        public function get_last_login($username){
        $db = db_connect();
        $statement = $db->prepare("SELECT date_time FROM activity_logs WHERE username=:username AND is_login=1 ORDER BY date_time DESC;");
        $statement->bindValue(':username', $username);
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

        return $rows;
    }
}