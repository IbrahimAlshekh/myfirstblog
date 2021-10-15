<!DOCTYPE html>
<?php
include 'DBConnection.php';

$dbconnection = new dbConnection();

$db = $dbconnection->connect();
?>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>My Bolg</title>
        <script type="text/javascript" src="jquery1.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">

        <script type="text/javascript">
        $(document).ready(function(){
            var falg = 0;
            $.ajax({
                type:"GET",
                url:"getPosts.php",
                data:{
                    'offset': 0,
                    'limit': 3
                },
                success: function(data){
                    $('body').append(data);
                }
            });
            $(window).scroll(function(){
                if($(window).scrollTop() >= $(document).height() -  $(window).height()){
                    falg += 3;
                    $.ajax({
                        type:"GET",
                        url:"getPosts.php",
                        data:{
                            'offset': falg,
                            'limit': 3
                        },
                        success: function(data){
                            $('body').append(data);
                        }
                    });
                }
            });
        });
        </script>

        <style>
            header{
                box-shadow: 0px 2px 4px rgba(0,0,0,0.3);
                padding: 10px;
                width: 100%;
                position:fixed;
                top: 0;
                background-color: #333;
            }
            body{

                text-align: left;
                background-color: #444;
                width: 100%;
                margin: 100px auto;

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
                box-shadow: 2px 3px 12px rgba(0,0,0,0.5) ;
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
                box-shadow: 2px 3px 12px rgba(0,0,0,0.5) ;
                border: solid #d0cece;
                border-radius: 20px;
                background-color: #777;
                margin: 10px 10% 10px 10%;
                padding: 10px 30px 10px 30px;
            }
            footer{
                position: fixed;
                padding: 10px;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: #222;
                color: white;
                text-align: center;
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
    <footer>
        <p>MyBlog</p>
    </footer>
    </body>

</html>
