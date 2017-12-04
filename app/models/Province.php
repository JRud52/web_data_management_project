<?php

class Province {

    public function __construct() {
        
    }

    public function get_cities($province){
        $db = db_connect();
        $statement = $db->prepare("SELECT city FROM province_city WHERE province=:province;");
        $statement->bindValue(':province', $province);
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

        return $rows;
    }
}
