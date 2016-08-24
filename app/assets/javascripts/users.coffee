$(document).ready ->
  # Hide/show create a team in sign up form
  hide_team = () ->
    $('#add_team').toggle()
  show_team = () ->
    $('#add_team').toggle()

  $('#add_team').hide()

  $('#add_team_link').click ->
    show_team()
    false
