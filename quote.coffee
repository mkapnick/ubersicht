command: 'curl -s "http://feeds.feedburner.com/brainyquote/QUOTEBR"'

refreshFrequency: 30000

style: """
  top: 7px
  left: 30px
  -webkit-font-smoothing: antialiased
  color: #fff
  font: 12px Iosevka Term
  font-weight: 500;

  .output
    padding: 5px 10px
    width: 300px

  .author, .example, .example-meaning
  .author
    text-align: right
"""

render: (output) -> """
  <div class="output">
    <div class="quote"></div>
    <div class="author"></div>
  </div>
"""

update: (output, domEl) ->
  # Define constants, and extract the juicy html.
  dom = $(domEl)
  xml = $.parseXML(output)
  $xml = $(xml)
  description = $.parseHTML($xml.find('description').eq(1).text())
  $description = $(description)

 # Find the info we need, and inject it into the DOM.
  dom.find('.quote').html $xml.find('description').eq(2)
  # dom.find('.author').html $xml.find('title').eq(2)
