var mes = "";

function validateEdit() {
    mes = "";
    var check = true;
    var firstName = document.getElementById("firstName").value.trim();
    var lastName = document.getElementById("lastName").value.trim();

    var phone = document.getElementById("phone").value.trim();
    var description = document.getElementById("description").value.trim();
    var patternPhone = /^[0-9]+$/i;
    var patternName = /^[a-zA-Z ]+$/i
    if (firstName.length == 0) {
        mes += "First name can not be empty\n";
        check = false;
    }
    if (lastName.length == 0) {
        mes += "Last name can not be empty\n";
        check = false;
    }
    if (phone.length == 0) {
        mes += "Phone can not be empty\n";
        check = false;
    }
    if (description.length == 0) {
        mes += "Description can not be empty\n";
        check = false;
    }
    if (!patternPhone.test(phone) && phone.length != 0) {
        mes += "Phone only contain the number\n";
        check = false;
    }
    if (!patternName.test(firstName) && firstName.length != 0) {
        mes += "First name only contain the alphabet or space\n";
        check = false;
    }
    if (!patternName.test(lastName) && lastName.length != 0) {
        mes += "Last name only contain the alphabet or space\n";
        check = false;
    }
    if (!check) {
        alert(mes);
    }
    return check;
}

function validateAdd() {
    mes = "";
    var check = true;
    var title = document.getElementById("title").value.trim();
    var brief = document.getElementById("brief").value.trim();
    var description = document.getElementById("description").value.trim();
    if (title.length == 0) {
        mes += "Title can not be empty\n";
        check = false;
    }
    if (brief.length == 0) {
        mes += "Brief can not be empty\n";
        check = false;
    }
    if (description.length == 0) {
        mes += "Description can not be empty\n";
        check = false;
    }
    if (!check) {
        alert(mes);
    }
    return check;
}

function validateLogin() {
    mes = "";
    validateEmail();
    validatePassword();
    if (mes != "") {
        alert(mes);
        return false;
    } else {
        return true;
    }
}

function validateRegister() {
    mes = "";
    validateUsername();
    validateEmail();
    validatePassword();
    validateRePassword();
    if (mes != "") {
        alert(mes);
        return false;
    } else {
        return true;
    }
}

function validateEmail() {
    var check = true;
    var email = document.getElementById("email").value.trim();
    var pattern = /^[a-zA-Z0-9]+@[a-zA-Z]+.com$/i;
    if (email.length == 0) {
        mes += "Email can not be empty\n";
        check = false;
    }
    if (email.length > 50) {
        mes += "The max length email is 50\n";
        check = false;
    }
    if (!pattern.test(email) && email.length != 0) {
        mes += "The email must follow the format: your_email@example.com\n";
        check = false;
    }
    return check;
}

function validatePassword() {
    var check = true;
    var password = document.getElementById("password").value.trim();
    var pattern1 = /[a-zA-Z]+/i;
    var pattern2 = /[0-9]+/i;
    var pattern3 = /[!$#%]+/i;
    if (password.length == 0) {
        mes += "Password can not be empty\n";
        check = false;
    }
    if (password.length > 50) {
        mes += "The max length of password is 50\n";
        check = false;
    }
    if ((!pattern1.test(password) || !pattern2.test(password) || !pattern3.test(password)) && password.length != 0) {
        mes += "The password must contain alphabet and contain at least one number and non-alphabetic characters (!, $, #, %)\n";
        check = false;
    }

    return check;
}

function validateUsername() {
    var check = true;
    var username = document.getElementById("username").value.trim();
    var pattern = /^[a-zA-Z0-9]{1,50}$/i;
    if (username.length == 0) {
        mes += "User name can not be empty\n";
        check = false;
    }
    if (username.length > 50) {
        mes += "The max length of user name is 50\n";
        check = false;
    }
    if (!pattern.test(username)) {
        mes += "User name only contain alphabet and number\n";
        check = false;
    }
    return check;
}

function validateRePassword() {
    check = true;
    var password = document.getElementById("password").value.trim();
    var rePassword = document.getElementById("rePassword").value.trim();
    if (password != rePassword) {
        mes += "The password and repassword must match\n"
        check = false;

    }
    return check;
}