SendEmailTest.Views.Users ||= {}

class SendEmailTest.Views.Users.NewView extends Backbone.View
  template: JST["backbone/templates/users/new"]

  events:
    "submit #new-user": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    $.ajax
      type: "POST"
      url: "/users/new_address"
      data: $("#new-user").serialize()
      success: (response) ->
        alert(response.message)
      error: (jqXHR, status, error) ->
        alert error

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
