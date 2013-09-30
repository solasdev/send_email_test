class SendEmailTest.Routers.UsersRouter extends Backbone.Router
  initialize: (options) ->
    @users = new SendEmailTest.Collections.UsersCollection()
    @users.reset options.users

  routes:
    "new"      : "newUser"
    "index"    : "index"
    ".*"        : "index"

  newUser: ->
    @view = new SendEmailTest.Views.Users.NewView(collection: @users)
    $("#users").html(@view.render().el)

  index: ->
    @view = new SendEmailTest.Views.Users.IndexView(users: @users)
    $("#users").html(@view.render().el)


