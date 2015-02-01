pageScroll = (link, target, give = 60) ->
  $(link).click ->
    $('html, body').animate({scrollTop: $(target).offset().top - give }, 500)


$(window).bind 'page:change', ->
  $('.page-jump').each ->
    link = $(this)
    target = $(this).attr 'href'

    pageScroll(link, target, 0)
