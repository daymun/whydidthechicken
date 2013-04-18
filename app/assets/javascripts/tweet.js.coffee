$(document).ready ->
  $('#why form').on 'submit', (e) ->
    e.preventDefault()
    url = "http://twitter.com/share?text=#{$('#tweet_field').val()}&via=whydidthechickn"
    url = encodeURI(url)
    window.open url
    $('#thanks').modal()
