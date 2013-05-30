$ ->
  fayeUrl = window.location.protocol + "//" + window.location.hostname + ":11134/faye" # change port for post of your Faye daemon
  fayeJS = fayeUrl + ".js"
  $.getScript(fayeJS, (e)->
    faye = new Faye.Client(fayeUrl)
    faye.subscribe(window.location.pathname, (data)->
      eval(data)
    )
  )