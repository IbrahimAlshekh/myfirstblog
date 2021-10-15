<!DOCTYPE html>
<?php
/**
 * Created by PhpStorm.
 * User: praktikant
 * Date: 22.05.19
 * Time: 13:19
 */
include 'DBConnection.php';

$dbconnection = new dbConnection();
$db = $dbconnection->connect();

?>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Bolg</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        header{
            padding: 10px;
            width: 100%;
            position: -webkit-sticky;
            position: sticky;
            top: 0;
            background-color: #333;
        }
        body{
            text-align: left;
            background-color: #444;
            width: 100%;
            margin: auto;

        }
        #seite-logo{
            align-content: stretch;
            padding-left: 50px;
            width: 80px;
            display: inline-flex;
        }
        nav {
            margin-bottom:10px;
            display: inline-block;
            width: 70%;
            overflow: hidden;
        }
        nav a {
            margin-right: 10px;
            float: right;
            display: inline-block;
            color: white;
            text-align: center;
            text-decoration: none;
            padding-left: 30px;
            padding-right: 30px;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        nav a:hover {
            background-color: #3ea985;
        }
        nav a:active {
            color: #46bf61;
            background-color: #484646;
        }
        nav a:visited {
            color: #d0cece;
            background-color: #3ea985;
        }
        .post-div{
            box-shadow: 0px 1px 5px rgba(0,0,0,0.5);
            border: solid #d0cece;
            border-radius: 20px;
            background-color: #777;
            margin: 10px 10% 10px 10%;
            padding: 10px 30px 10px 30px;
        }
        h1{
            color: blanchedalmond;
            background-color: #777777;
        }
        a {
            color: burlywood;
            text-decoration: none;
        }
        a:hover{
            color: #eeeeee;
        }
        a:visited{
            color: #67aad4;
            text-decoration: dotted blueviolet;
        }
        h2{
            color: #fefefefe;
        }
        article{
            color: #eeeeee;
        }
        .post-header-div{
            background-color: #333;
        }
        .form-div{
            -webkit-align-content: center;
            align-content: center;
            position: static;
            box-shadow: 0px 1px 5px rgba(0,0,0,0.5);
            border: solid #d0cece;
            border-radius: 20px;
            background-color: #777;
            margin: 10px 10% 10px 10%;
            padding: 10px 30px 10px 30px;
        }
        footer{
            color: skyblue;
            text-align: center;
            background-color: #222;
            padding: 50px;
        }
        input[type=text], textarea {
            width: 80%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }
        label {
            padding: 12px 12px 12px 0;
            display: inline-block;
        }
        input[type=submit] {
            background-color: #333131;
            color: white;
            padding: 12px 60px;
            border: none;
            border-radius: 4px;
            margin-left: 34%;
        }
        input[type=submit]:hover {
            background-color: #d0cece;
            color: #222222;
        }
        .col-25 {
            float: left;
            width: 25%;
            margin-top: 6px;
        }
        .col-75 {
            float: left;
            width: 75%;
            margin-top: 6px;
        }
        .row:after {
            content: "";
            display: table;
            clear: both;
        }
        .comment-title{
            color: #dcdcdcee;
            font-size: 24px;
            text-shadow: 1px 1px 2px black;
        }
        .comment-subtitle{
            font-size: 11px;
            margin-top: -18px;
            color: #9c9c9c;
        }
        .comment{
            border-radius: 6px;
            display: block;
            background-color: darkgray;
            padding: inherit;
            color: lavender;
        }
        .comment-border{
            border: 1px solid mintcream;
        }

    </style>
</head>
<body>
<header>

    <img id="seite-logo" src="images/mybloglogo.png"/>
    <nav id="main-nav-menu">
        <a href="addarticle.php">einen Artickel schreiben</a>
        <a href="index.php">Home</a>
    </nav>

</header>
<div class="form-div">
    <form action="addarticle.php" method="post">
        <div class="row">
            <div class="col-25">
                <label for="fname">Artikel Titel</label>
            </div>
            <div class="col-75">
                <input type="text" id="fname" name="posttitle" placeholder="Artikel Title.." required>
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="subject">Artikel</label>
            </div>
            <div class="col-75">
                <textarea id="subject" name="post" placeholder="Ihr Artikel.." style="height:200px" required></textarea>
            </div>
        </div>
        <div class="row">
            <div class="col-75">
                <input type="submit" value="Veröffentlichen">
            </div>
        </div>
    </form>
    <?php
    $currentDate = date('Y-m-d');
    if(isset($_POST['posttitle'])){
        $values ="INSERT INTO posts (post_title,post,datum) VALUE ('".$_POST['posttitle']."','".$_POST['post']."','".$currentDate."')";
        if($db->query($values)=== true){

            print_r($db->errorInfo());
        }
        echo "Ihr Artikel ist erfolgreich veröffentlicht";
    }
    ?>
</div>
<footer>
    <p>MyBlog</p>
</footer>
</body>
</html>
