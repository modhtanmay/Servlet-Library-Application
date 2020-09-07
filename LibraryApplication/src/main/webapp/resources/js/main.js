/**
 * 
 */
function ValidateBook(e) {
        var keyCode = e.keyCode || e.which;
 
        var lblError = document.getElementById("lblCharError");
        
        lblError.innerHTML = "";
 
        //Regex for Valid Characters i.e. Alphabets.
        var regex = /^[A-Za-z ]+$/;
 
        //Validate TextBox value against the Regex.
        var isValid = regex.test(String.fromCharCode(keyCode));
        if (!isValid) {
            lblError.innerHTML = "Only Alphabets allowed.";
        }
 
        return isValid;
    }

function ValidateAuthor(e) {
    var keyCode = e.keyCode || e.which;

    var lblError = document.getElementById("lblCharError2");
    
    lblError.innerHTML = "";

    //Regex for Valid Characters i.e. Alphabets.
    var regex = /^[A-Za-z ]+$/;

    //Validate TextBox value against the Regex.
    var isValid = regex.test(String.fromCharCode(keyCode));
    if (!isValid) {
        lblError.innerHTML = "Only Alphabets allowed.";
    }

    return isValid;
}

function ValidateNum(e) {
    var keyCode = e.keyCode || e.which;
    var lblError = document.getElementById("lblNumError");
    lblError.innerHTML = "";

    //Regex for Valid Characters i.e. Alphabets.
    var regex = /^[0-9]+$/;

    //Validate TextBox value against the Regex.
    var isValid = regex.test(String.fromCharCode(keyCode));
    if (!isValid) {
        lblError.innerHTML = "Only Digits allowed.";
    }
    

    return isValid;
}