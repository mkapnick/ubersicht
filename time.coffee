command: "echo Hello World"

refreshFrequency: 10000 # ms

render: -> """
    <div class="time"></div>
"""

style: """
  width: 50%
  left: 25%
  bottom: 12px
  -webkit-font-smoothing: antialiased
  text-align: center
  color: #ffffff
  font: 12px Iosevka Term
  font-weight: 500;
  overflow: hidden
  text-overflow: ellipsis
"""

# Update function.
update: (output, domEl) ->

  # Fetch the current hour.
  d = new Date()
  hour = d.getHours()
  minutes = d.getMinutes()

  if hour > 12
    hour = hour - 12

  if minutes < 10
    minutes = 0 + "" + minutes

  time = hour + ':' + minutes

  # DOM manipulation.
  $(domEl).find('.time').text("#{time}")
