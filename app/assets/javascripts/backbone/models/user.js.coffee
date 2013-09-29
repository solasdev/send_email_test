class SendEmailTest.Models.User extends Backbone.Model
  paramRoot: 'user'

  defaults:
    address: null

class SendEmailTest.Collections.UsersCollection extends Backbone.Collection
  model: SendEmailTest.Models.User
  url: '/users'
