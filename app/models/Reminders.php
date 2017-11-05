<?php

class Reminders {

    public function __construct() {
        
    }

    public function get_reminders($username){
        $db = db_connect();
        $statement = $db->prepare("SELECT * FROM reminders WHERE username=:username AND deleted=0;");
        $statement->bindValue(':username', $username);
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

        return $rows;
    }

    public function get_reminder($id){
        $db = db_connect();
        $statement = $db->prepare("SELECT * FROM reminders WHERE id=:id;");
        $statement->bindValue(':id', $id);
        $statement->execute();
        $row = $statement->fetch(PDO::FETCH_ASSOC);

        return $row;
    }

    public function remove_reminder($id){
        $db = db_connect();
        $statement = $db->prepare("UPDATE reminders SET deleted=1 WHERE id=:id;");
        $statement->bindValue(':id', $id);
        $statement->execute();
    }

    public function update_reminder($id, $subject, $description){
        $db = db_connect();
        $statement = $db->prepare("UPDATE reminders SET subject=:subject, description=:description WHERE id=:id;");
        $statement->bindValue(':subject', $subject);
        $statement->bindValue(':description', $description);
        $statement->bindValue(':id', $id);
        $statement->execute();
    }

    public function create_reminder ($subject, $description, $username) {
        $db = db_connect();
        $statement = $db->prepare("INSERT INTO reminders (subject, description, username) VALUES (:subject, :description, :username);");
        $statement->bindValue(':subject', $subject);
        $statement->bindValue(':description', $description);
        $statement->bindValue(':username', $username);
        $statement->execute();
    }
}
