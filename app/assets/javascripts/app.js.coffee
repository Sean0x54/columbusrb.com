class window.App
  constructor: ->
    @loadBindings()
    @watchCodeJamSlider()

  loadBindings: ->
    $("#announcement a").effect('pulsate', 'slow')
    $('#crb').bigtext()

  watchCodeJamSlider: ->
    $('a#code-jam-slider').on 'click', (e) ->
      e.preventDefault()
      $('#code_jam').animate({"margin-right": "0px"})
      $('#overlay').animate({"opacity": 0.5})

    $('a#close-jam').on 'click', (e) ->
      e.preventDefault()
      $('#code_jam').animate({"margin-right": "-310px"})
      $('#overlay').animate({"opacity": 1.0})
