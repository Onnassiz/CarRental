class Users.App
  constructor: ->
    @ui = new Users.UI()
  
  start:->
    @ui.pourHeader()