command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 2000 # ms

render: (output) ->
  "mem #{output}"

style: """
  -webkit-font-smoothing: antialiased
  bottom: 7px
  color: #fff;
  font-family: 'Helvetica'
  font-size: 14px
  font-weight: 500;
  right: 31px;
  position: absolute
"""
