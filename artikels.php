<!DOCTYPE html>
<?php
include 'DBConnection.php';

$dbconnection = new dbConnection();
$db = $dbconnection->connect();


if(isset($_GET["postid"])){
    $idpost = $_GET["postid"];
}elseif(isset($_POST["postid"])){
    $idpost = $_POST["postid"];
}else{
    $idpost= null;
}

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
        .comment-t{
            text-align: center;
            color: blanchedalmond;
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
<?php
if($idpost){
    $getDataQuery = "select * from posts WHERE post_id="."$idpost".";";
    $postdata =  $db->query($getDataQuery);
    if ($postdata->rowCount() > 0 ) {
        while($row = $postdata->fetch()) {
            echo "<div class=\"post-div\">" . "<div class=\"post-header-div\">";
            echo " <h1> $row[post_title]</h1>" . "</div>";
            echo "<article class=\"post-article\">" ."$row[post]"."</article>"."</div>";
        }
    } else {
        echo "Es gibt Keine Artikeln";
    }
}else{
    return;
}

?>
<div class="form-div">
    <h3 class="comment-t">Artikel Kommentieren</h3>
    <form action="artikels.php?<?php echo $idpost ?>" method="post">
            <input type="hidden" name="postid" value="<?php echo $idpost ?>">
            <div class="row">
                <div class="col-25">
                    <label for="fname">First Name</label>
                </div>
                <div class="col-75">
                    <input type="text" id="fname" name="firstname" placeholder="Ihre Name.." required>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="lname">E-Mail Adresse</label>
                </div>
                <div class="col-75">
                    <input type="text" id="lname" name="emailadresse" placeholder="Ihr E-Mail.." required>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="subject">Subject</label>
                </div>
                <div class="col-75">
                    <textarea id="subject" name="kommentar" placeholder="Ihr Kommentar.." style="height:200px" required></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-75">
                    <input type="submit" value="Submit">
                </div>
            </div>
        </form>
    <?php
    if(isset($_POST['postid']))
    $values ="INSERT INTO comments (post_id,bsuchername,email,comment) VALUE ('".$_POST['postid']."','".$_POST['firstname']."','".$_POST['emailadresse']."','".$_POST['kommentar']."')";
    if($db->query($values)=== true){
        echo "Sie haben erfolreich Kommentiert";
        print_r($db->errorInfo());
    }
    ?>
</div>
<div class="post-div">
    <h3 class="comment-t">Vorherige Kommentare</h3>
    <?php
    $getDataQuery = "select * from comments WHERE post_id="."$idpost".";";
    $postdata =  $db->query($getDataQuery);

    if ($postdata->rowCount() > 0) {
        while($row = $postdata->fetch()) {
            $namde =ucwords($row['bsuchername']);
            echo " <p class=\"comment-title\">"."$namde"."</p>";
            echo " <p class=\"comment-subtitle\">"."$row[email]"."</p>";
            echo "<p class=\"comment\">"."$row[comment]"."</p>";
            echo "<p class='comment-border' >"."</p>";
        }
    } else {
        echo "Es gibt noch Keine kommentare";
    }
    ?>
</div>
<footer>
    <p>MyBlog</p>
</footer>
</body>
</html>
