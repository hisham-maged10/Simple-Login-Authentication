function isValid()
{
    register = document.forms["register"];
    username = register["username"].value;
    if(username == "")
    {
        alert("Username is empty!");
        return false;
    }
    email = register["email"].value;
    if(email != "")
    {
        exp = new RegExp("^.+@.+\\.(org|edu|com)$");
        if(!exp.test(email))
        {
            alert("Email format is invalid!");
            return false;
        }
    }else
    {
        alert("Email is Empty!");
        return false;
    }
    password = register["pass"].value;
    if(password == "")
    {
        alert("Password is empty!");
        return false;
    }
    return true;
}