function showAbout() {
    $('#About').show();
    $('#Studio').hide();
    $('#Works').hide();
    $('#Contact').hide();
}

function showStudio() {
    $('#About').hide();
    $('#Studio').show();
    $('#Works').hide();
    $('#Contact').hide();
}

function showWorks() {
    $('#About').hide();
    $('#Studio').hide();
    $('#Works').show();
    $('#Contact').hide();
}

function showContact() {
    $('#About').hide();
    $('#Studio').hide();
    $('#Works').hide();
    $('#Contact').show();
}

showAbout();

$(document).ready(function () {
    $("#About").load("./page/about.html");
    $("#Studio").load("./page/studio.html");
    $("#Works").load("./page/Works.html");
    $("#Contact").load("./page/Contact.html");
});