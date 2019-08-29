function openForm(evt, formName) {
    var i, formlink, formcontent;

    //get all elements with tabcontent and hide
    formcontent = document.getElementsByClassName("formcontent");
    for (i = 0; i < formcontent.length; i++) {
        formcontent[i].style.display = "none";
    }

    //Get all elements with class="formlinks" and remove the class "active"
    formlink = document.getElementsByClassName("formlink");
    for (i = 0; i < formlink.length; i++) {
        formlink[i].className = formlink[i].className.replace(" active", "");
    }

    //Show the current tab, and add an "active" class to the button that opened
    document.getElementById(formName).style.display = "block";
    evt.currentTarget.className += " active";
}
