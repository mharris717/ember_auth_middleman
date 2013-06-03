App.User = DS.Model.extend
  email: DS.attr('string')
  authentication_token: DS.attr('string')

App.User.reopenClass
  test: ->
    App.Auth.signIn
      data:
        "email": "mharris717@gmail.com"
        "password": "dfgdfgregegr"