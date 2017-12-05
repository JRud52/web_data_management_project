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

    public function update_client($name, $added_by, $birthdate, $email, $phone_number, $province, $city){
        $db = db_connect();
        $statement = $db->prepare("UPDATE name_list SET name=:name, added_by=:added_by, birthdate=:birthdate, email=:email, phone_number=:phone_number, province=:province, city=:city) WHERE name=:name;");
        $statement->bindValue(':name', $name);
        $statement->bindValue(':added_by', $added_by);
        $statement->bindValue(':birthdate', $birthdate);
        $statement->bindValue(':email', $email);
        $statement->bindValue(':phone_number', $phone_number);
        $statement->bindValue(':province', $province);
        $statement->bindValue(':city', $city);
        $statement->execute();
    }

    public function name_exists($name){
        $db = db_connect();
        $statement = $db->prepare("SELECT COUNT(name) as names FROM name_list WHERE name=:name;");
        $statement->bindValue(':name', $name);
        $statement->execute();
        $rows = $statement->fetch(PDO::FETCH_ASSOC);

        $count = (int)$rows['names'];

        return $count > 0;
    }

    public function get_client($name){
        $db = db_connect();
        $statement = $db->prepare("SELECT * FROM name_list WHERE name=:name;");
        $statement->bindValue(':name', $name);
        $statement->execute();
        $rows = $statement->fetch(PDO::FETCH_ASSOC);

        return $rows;
    }

    public function get_manager($id){
        $db = db_connect();
        $statement = $db->prepare("SELECT personal_details.first_name, personal_details.last_name FROM managers, users, personal_details WHERE managers.manager_id=users.id AND users.username=personal_details.username AND managers.staff_id = :id");
        $statement->bindValue(':id', $id);
        $statement->execute();
        $rows = $statement->fetch(PDO::FETCH_ASSOC);

        return $rows['first_name'] . ' ' . $rows['last_name'];
    }
}
