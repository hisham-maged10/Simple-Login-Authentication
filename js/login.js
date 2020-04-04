function isValid()
{
    login = document.forms["login"];
    email = login["email"].value;
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
    password = login["pass"].value;
    if(password == "")
    {
        alert("Password is empty!");
        return false;
    }
    return true;
}