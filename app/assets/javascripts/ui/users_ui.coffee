class Users.UI
  pourHeader: ->
    self = @
    document.addEventListener ("turbolinks:load"), () ->
      path = location.pathname.split("/")
      header = $(".sign-up-heading")
      header = $(".sign-in-heading") if path.last() == "sign_in"
      text = header.text()
      header.text("")
      delay = 50
      self.addTextByDelay(text, header, delay)
    
  
  addTextByDelay: (text, element, delay) ->
    self = @
    element.append(text[0])
    setTimeout ( ->
        self.addTextByDelay(text.slice(1), element, delay)
    ), delay