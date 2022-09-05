<?php

if (isset($_POST['searchName']) && !empty($_POST['searchName']))
{
    $host = 'localhost';
    $dbname = 'hint_search';
    $login = 'root';
    $password = '';
    $charset = 'UTF8';
    try 
    {
        $dbh = new PDO('mysql:host='.$host.';dbname='.$dbname, $login, $password,
        array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \''.$charset.'\''));
    }
    catch (PDOException $error) 
    {
        echo "Ошибка: " . $error->getMessage();
        die();
    }
    $query = $dbh->prepare("SELECT * FROM `users` ORDER BY `name`");
    $query->execute();
    $users = $query->fetchAll(PDO::FETCH_ASSOC);
    $result = [];
    foreach ($users as $value)
    {
        $name = $value['name'].' '.$value['surname'];
        if(preg_match('#([\s]{1}|^)'.$_POST['searchName'].'#u', $name) === 1)
        {
            $result[] = $name;
        }
    }
    echo json_encode($result, JSON_UNESCAPED_UNICODE);
}
