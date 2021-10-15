<?php
/**
 * Created by PhpStorm.
 * User: praktikant
 * Date: 22.05.19
 * Time: 14:30
 */
include 'DBConnection.php';

$connection = new dbConnection();

$db = $connection->connect();

if(isset($_GET['offset']) && $_GET['limit']){
    $limit = (int)$_GET['limit'];
    $offset = (int)$_GET['offset'];

    $getDataQuery = "SELECT * FROM posts ORDER BY post_id DESC LIMIT {$limit} OFFSET {$offset} ";
    $postdata =  $db->query($getDataQuery);
    //  echo print_r($db->errorInfo());

    if ($postdata->rowCount() > 0) {
        while($row = $postdata->fetch()) {
            echo "<div class=\"post-div\">" . "<div class=\"post-header-div\">";
            echo "<h1><a href=\"artikels.php?postid=" . "$row[post_id]" . "\">$row[post_title]</a></h1>" . "</div>";
            echo "<article class=\"post-article\">" ."$row[post]"."</article>"."</div>";

        }

    }else{
        return;
    }

}
