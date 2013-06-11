App.SignInController = Em.ObjectController.extend
  init: ->
    @_super()
    @set "content",Em.Object.create(email: "mharris717@gmail.com")

  login: ->
    fgdfgdgff
    console.debug "login"
    App.Auth.signIn
      data: 
        "email": @$email
        "password": @$password

  dropboxUrl: (-> "#{ezqServerUrl()}/users/auth/dropbox").property()

App.SignOutController = Em.ObjectController.extend
  init: ->
    @_super()
    @set "content",Em.Object.create()

  logoutold: ->
    console.debug "logout"
    App.Auth.signOut
      data: 
        "email": App.Auth.$user.$email

  logout: ->
    console.debug "logout"
    App.Auth.get("_session").clear()
    App.Auth.trigger "signOutSuccess"

  fatsecretUrl: (-> "#{ezqServerUrl()}/users/auth/fatsecret").property()