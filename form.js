const init = function(){
    document.getElementById('button-send').addEventListener('click', send);
}

const send = function(ev){
    ev.preventDefault();
    ev.stopPropagation();
    //or the click will travel to the form and the form will submit
    let fails = validate();
    //IF we wanted to do some async things then use a Promise with .then and .catch
    if(fails.length === 0){
        //good to go
        document.getElementById('form-user').submit();
    }else{
        //there are some errors to display
        //bad user
        //let err = document.querySelector('.error');
        //let input = err.querySelector('input');
        //err.setAttribute('data-errormsg', ` ... Missing ${input.placeholder}`);
        fails.forEach(function(obj){
            let field = document.getElementById(obj.input);
            field.parentElement.classList.add('error');
            field.parentElement.setAttribute('data-errormsg', obj.msg);
        })
    }
}

const validate = function(ev){

    //inputs for text, email, tel, color, number...
    let first = document.getElementById('input-first');
    let email = document.getElementById('input-email');
    //.value, .defaultValue, length of value
    if( first.value === ""){
        failures.push({input:'input-first', msg:'Required Field'})
    }
    if( email.value === ""){
        failures.push({input:'input-email', msg:'Required Field'})
    }

    //return a boolean || an object with details about the failures
    return failures;
}


document.addEventListener('DOMContentLoaded', init);
