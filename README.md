# hubot-parsebot

A Hubot script that evaluates JS or CoffeeScript from chat messages.

## Installation

- Add `hubot-parsebot` to your Hubot's `package.json`
- Add `hubot-parsebot` to your Hubot's `external-scripts.json`
- Run `npm install`


## Hubot chat commands

```
!javascript "foo" + " bar"            > "foo bar"
!js (function() { return 1 + 2; }()   > 3
!coffeescript yes                     > true
!coffee do () -> if on then 1 else 2  > 1 
```


## About

- GitHub project: https://github.com/JustinMorgan/hubot-parsebot
- Author: Justin Morgan (https://github.com/JustinMorgan)
- License: ParseBot is licensed under the [MIT][mit] license.

[mit]: http://opensource.org/licenses/mit-license.php