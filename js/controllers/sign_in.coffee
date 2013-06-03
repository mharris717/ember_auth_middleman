App.SignInController = Em.ObjectController.extend
  init: ->
    @_super()
    @set "content",Em.Object.create()

  login: ->
    console.debug "login"
    App.Auth.signIn
      data: 
        "email": @$email
        "password": @$password