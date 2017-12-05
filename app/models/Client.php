<?php

class Client {

    public function __construct() {
        
    }

    public function add_client($name, $added_by, $birthdate, $email, $phone_number, $province, $city){
        $db = db_connect();
        $statement = $db->prepare("INSERT INTO name_list (name, added_by, birthdate, email, phone_number, province, city) VALUES (:name, :added_by, :birthdate, :email, :phone_number, :province, :city);");
        $statement->bindValue(':name', $name);
        $statement->bindValue(':added_by', $added_by);
        $statement->bindValue(':birthdate', $birthdate);
        $statement->bindValue(':email', $email);
        $statement->bindValue(':phone_number', $phone_number);
        $statement->bindValue(':province', $province);
        $statement->bindValue(':city', $city);
        $statement->execute();
    }
}
