    <head>
        <title>
            Registeration Form
        </title>
        <script src = "./js/register.js"></script>
    </head>

    <body>
        <div>
            <form name="register" action="<?php echo $_SERVER["PHP_SELF"];?>" onsubmit="return isValid()" method="POST">
                <label>
                    Username:
                </label>
                <input type="text" name="username" placeholder="Please Enter your Username"/>
                <br/>
                <label>
                    Email:
                </label>
                <input type="text" name="email" placeholder="Please Enter your Email"/>
                <br/>
                <label>
                    Password:
                </label>
                <input type="password" name="pass" placeholder="Please Enter your password"/>
                <br/>
                <input type="submit" name="submit" value="Register"/>
            </form>
        </div>

        <?php
                if(isset($_POST["submit"]))
                {
                    $conn = mysqli_connect("localhost","root","","registeration");
                    if($conn == null)
                        die(mysqli_connect_error());
                    $username = $_POST["username"];
                    $email = $_POST["email"];
                    $password = $_POST["pass"];
                    if($username != "" && $password != "" && $email != "" && preg_match('/^.+@.+\.(org|edu|com)$/',$email) )
                    {
                        $insert = "insert into user (username,email,password) values('".$username."','".$email."','".md5($password)."')";
                        $query = mysqli_query($conn,$insert);
                        if($query != null)
                        {
                            session_start();
                            $_SESSION['formOutput'] = $username;
                        }
                    }
                mysqli_close($conn);                    
                header('location:welcome.php');
                }
            ?>


    </body>
</html>
