function validateEmail(email) {
    var re = /^[\w.+\-]+@algomau\.ca$/;
    if (re.test(email)) {
        document.getElementById('email-field').className = 'form-control';
    } else {
        document.getElementById('email-field').className = 'form-control is-invalid';
    }
}