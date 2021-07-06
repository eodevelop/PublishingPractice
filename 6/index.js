function showAbout() {
    $('.About').show();
    $('.Studio').hide();
    $('.Works').hide();
    $('.Contact').hide();
}

function showStudio() {
    $('.About').hide();
    $('.Studio').show();
    $('.Works').hide();
    $('.Contact').hide();
}

function showWorks() {
    $('.About').hide();
    $('.Studio').hide();
    $('.Works').show();
    $('.Contact').hide();
}

function showContact() {
    $('.About').hide();
    $('.Studio').hide();
    $('.Works').hide();
    $('.Contact').show();
}

showAbout();