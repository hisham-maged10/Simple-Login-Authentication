<html>
    <head>
        <title>
            Login Form
        </title>
    
    <script src="./js/login.js"></script>
    </head>

        <body>
            <div>
                <form name="login" action="<?php echo $_SERVER["PHP_SELF"];?>" onsubmit="return isValid()" method="POST">
                    <label>
                        Email:
                    </label>
                    <input type="text" name="email" placeholder="Please Enter your Email" />
                    <br/>
                    <label>
                        Password:
                    </label>
                    <input type="password" name="pass" placeholder="Please Enter your password" />
                    <br/>
                    <input type="submit" name="submit" value="login"/>
                </form>
            </div>
            <?php
                if(isset($_POST["submit"]))
                {
                    $conn = mysqli_connect("localhost","root","","registeration");
                    if($conn == null)
                        die(mysqli_connect_error());
                    $email = $_POST["email"];
                    $password = $_POST["pass"];
                    if($password != "" && $email != "" && preg_match('/^.+@.+\.(org|edu|com)$/',$email) )
                    {
                        $query = mysqli_query($conn,"select * from user where email='".$email."' and password='".md5($password)."'");
                        if(mysqli_num_rows($query) > 0)
                        {
                            $fetched = mysqli_fetch_assoc($query);
                            session_start();
                            $_SESSION['formOutput'] = $fetched["username"];
                        }
                    }
                mysqli_close($conn);
                header('location:welcome.php');
                }
            ?>
        </body>

    
</html>
