# Description:
#   Allows hubot to run inline JS or CoffeeScript.
#
# Dependencies:
#   coffee-script
#   swiss-army-eval
#
# Commands:
#   !javascript [code]   - evaluates [code] as JavaScript
#   !js [code]           - evaluates [code] as JavaScript
#   !coffeescript [code] - evaluates [code] as CoffeeScript
#   !coffee [code]       - evaluates [code] as CoffeeScript
#
# Author:
#   JustinMorgan@GitHub
#
compile = require "swiss-army-eval" 

module.exports = (robot) -> 
  robot.hear /^!(js|javascript|coffee(?:script)?) (.*)/i, (msg) ->
    [lang, code] = msg.match[1..]
    try 
      msg.send (do compile lang, code).toString()
    catch e
      msg.send e