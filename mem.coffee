command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 2000 # ms

render: (output) ->
  "mem #{output}"

style: """
  -webkit-font-smoothing: antialiased
  top: 12px
  color: #fff
  font: 12px Iosevka Term
  font-weight: 500;
  right: 40px;
  position: absolute
"""
