# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

textarea = document.getElementById "twitztxt"
count = document.getElementById "CharCount"
button = document.getElementById "twitzbtn"

countchars = (e) ->
  len = textarea.value.length
  count.innerHTML = len
  if len > 140
    count.className = "limit"
    button.setAttribute "disabled","disabled"
  else
    count.className = "c-white"
    button.removeAttribute "disabled"

textarea.addEventListener "keyup", countchars, false
textarea.addEventListener "keydown", countchars, false

