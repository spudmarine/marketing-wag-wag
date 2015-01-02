// Set max-height the first time
$(document).ready(function() {
    $('.reveal-modal').css('max-height', $('html').height() - 110 + 'px'); // 100 +10px to keep modal effect visible
}

// Reset max-height after window resize
$(window).resize(function() {
    $('.reveal-modal').css('max-height', $('html').height() - 110 + 'px');
});