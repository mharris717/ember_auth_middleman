App.Auth = Em.Auth.create
  signInEndPoint: '/users/sign_in.json'
  signOutEndPoint: '/users/sign_out.json'
  userModel: 'App.User'
  baseUrl: "http://localhost:5701"

  tokenKey: "auth_token"
  tokenIdKey: "user_id"

App.Auth.on "signInSuccess", ->
  console.debug "signed in"
  setTimeout ->
    App.Widget.find()
  ,1000