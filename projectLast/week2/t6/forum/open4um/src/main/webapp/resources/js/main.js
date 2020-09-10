// js from
let btn_login = document.querySelector('.menu_right_login > b');
let main_form = document.querySelector('.main_form');
let hide_pw = document.querySelector('.input_form > .hiddeneye');
let show_pw = document.querySelector('.showeye');
let input_pw = document.querySelector('#password');
let password_register = document.querySelector('#password_register');
show_pw.style.display = "none";
hide_pw.addEventListener('click', () => {
    input_pw.type = "text";
    show_pw.style.display = "block";
    hide_pw.style.display = "none";
})
show_pw.addEventListener('click', () => {
    input_pw.type = "password";
    show_pw.style.display = "none";
    hide_pw.style.display = "block";
})
btn_login.addEventListener('click', function() {
    main_form.style.opacity = 1;
    main_form.style.visibility = "visible";
})
main_form.addEventListener('click', function(e) {

    if (e.target === this) {
        main_form.style.opacity = 0;
        main_form.style.visibility = "hidden";
    }
})
$(document).keyup(function(e) {
    if (e.keyCode === 27) {
        main_form.style.opacity = 0;
        main_form.style.visibility = "hidden";
    } // esc
});

// toggle login and register

let signin = document.querySelector('.newmenber.signin > a');
let form_register = document.querySelector('.form_register');
let signup = document.querySelector('.newmenber.signup > a');
let hidden_pw_register = document.querySelector('.input_form.register i.hiddeneye');
let show_pw_register = document.querySelector('.input_form.register i.showeye');
let main_form_register = document.querySelector('.main_form_register');
main_form_register.addEventListener('click', function(e) {
    if (e.target === this) {
        form_register.style.opacity = 0;
        form_register.style.visibility = "hidden";
        main_form_register.style.opacity = 0;
        main_form_register.style.visibility = "hidden";
    }
})

$(document).keyup(function(e) {
    if (e.keyCode === 27) {
        form_register.style.opacity = 0;
        form_register.style.visibility = "hidden";
        main_form_register.style.opacity = 0;
        main_form_register.style.visibility = "hidden";
    } //
})
signin.addEventListener('click', function() {
    form_register.style.opacity = 0;
    form_register.style.visibility = "hidden";

    main_form.style.opacity = 1;
    main_form.style.visibility = "visible";

    main_form_register.style.opacity = 0;
    main_form_register.style.visibility = "hidden";
})

signup.addEventListener('click', function() {
    form_register.style.opacity = 1;
    form_register.style.visibility = "visible";

    main_form_register.style.opacity = 1;
    main_form_register.style.visibility = "visible";
    main_form.style.opacity = 0;
    main_form.style.visibility = "hidden";
})


show_pw_register.addEventListener('click', function() {
    password_register.type = "password";
    show_pw_register.style.opacity = 0;
    show_pw_register.style.visibility = "hidden";
})
hidden_pw_register.addEventListener('click', function() {
        password_register.type = "text";
        show_pw_register.style.opacity = 1;
        show_pw_register.style.visibility = "visible";
    })
    // toggle login and register xxx

// js from xxxxxxxxxxx
// js toggle setting

let menu_right_setting = document.querySelector('.menu_right_setting > i');
let menu_setting = document.querySelector('.menu_setting');
let document_body = document.body;
document_body.addEventListener('click', function() {
    console.log('ok');
})
menu_right_setting.addEventListener('click', function(e) {

        menu_setting.style.opacity = 1;
        menu_setting.style.visibility = "visible";
    })
    // document.body.addEventListener('click', function() {
    //     menu_setting.style.opacity = 0;
    //     menu_setting.style.visibility = "hidden";
    // })
$(document).keyup(function(e) {
        if (e.keyCode === 27) {
            menu_setting.style.opacity = 0;
            menu_setting.style.visibility = "hidden";
        } //
    })
    // js toggle setting xxx