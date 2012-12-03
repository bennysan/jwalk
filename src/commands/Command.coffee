util = require 'util'

class Command

	help: ->
		'(no help defined for this command)'

	process: (context, args, callback) ->
		callback()

	autocomplete: (context, str, callback) ->
		callback null, [[], str]

	inspect: (obj, depth) ->
		console.log util.inspect(obj, false, depth, true)

module.exports = Command