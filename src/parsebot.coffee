# Description:
#   Allows hubot to run inline JS or CoffeeScript.
#
# Dependencies:
#   coffee-script
#   swiss-army-eval
#
# Commands:
#   hubot javascript me [code]   - evaluates [code] as JavaScript
#   hubot js me [code]           - evaluates [code] as JavaScript
#   hubot js [code]              - evaluates [code] as JavaScript
#   hubot coffeescript me [code] - evaluates [code] as CoffeeScript
#   hubot coffee me [code]       - evaluates [code] as CoffeeScript
#   hubot coffee [code]          - evaluates [code] as CoffeeScript
#
# Author:
#   JustinMorgan@GitHub
#
compile = require "swiss-army-eval" 

module.exports = (robot) -> 
  robot.respond /(js(?: me)?|javascript|coffee(?: me|script)?) (.*)/i, (msg) ->
    [lang, code] = msg.match[1..]
    try 
      msg.send (do compile lang, code).toString()
    catch e
      msg.send e