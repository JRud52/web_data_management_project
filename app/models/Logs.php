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
}