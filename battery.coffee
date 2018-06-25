command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d'%'"

refreshFrequency: 150000 # ms

render: (output) ->
  if output > 50
    "battery <span style='color:#a1b470'>#{output}%</span>"  # f6c98c = yellow
  else if output < 51 && output > 15
    "battery <span style='color:#f6c98c'>#{output}%</span>"  # a94744 = red
  else
    "battery <span style='color:#a94744'>#{output}%</span>"  # a1b470 = green

style: """
  -webkit-font-smoothing: antialiased
  color: #fff;
  font-family: 'Helvetica'
  font-size: 14px
  font-weight: 500;
  bottom: 7px
  right: 170px
  position: absolute
"""
