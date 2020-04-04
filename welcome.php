<html>
    <head>
        <title>
            Welcome
        </title>
    </head>
    
    <body>
        <?php 
             session_start();
             $output=$_SESSION['formOutput'];
             if($output != null)
                echo "Welcome ".$output;
            else
                echo "Invalid Credentials";
            session_destroy();
        ?>
    </body>


</html>