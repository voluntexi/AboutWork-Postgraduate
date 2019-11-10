function check() {
    var objusername = document.forms["RegisterForm"].username;
    var username = objusername.value;
    var objpassword = document.forms["RegisterForm"].userpassword;
    var password = objpassword.value;
    var objcpassword = document.forms["RegisterForm"].confirmuserpassword;
    var confirmuserpassword = objcpassword.value;

    if(username.length<6||username.length>12)
    {
        alert("用户名必须在6-12之间！");
        return false;
    }
    else if(password!=confirmuserpassword)
    {
        alert("请确认密码相同！");
        return false;
    }
    else
    {
        document.forms["RegisterForm"].submit();
    }


}