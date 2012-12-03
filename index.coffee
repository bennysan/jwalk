fs = require 'fs'
path = require 'path'
zlib = require 'zlib'

require 'colors'

loader = require './src/loader'
prompt = require './src/prompt'

if process.argv.length < 3
	console.log "usage: jwalk <filename>"
	process.exit(1)

filename = process.argv[2]
if !fs.existsSync(filename)
	console.log "File not found: #{filename}"
	process.exit(1)

loader.load filename, (err, tree) ->
	if err?
		console.log "Error loading file: #{err}".red
		process.exit(2)
	prompt.run tree

