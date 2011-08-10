walk = require("./walk").walk
path = require("path")

walk "/Volumes/HACKING/MOVIES",(results)->
  i = 0
  for r in results
    if path.extname(r) in ['.avi','.DAT','.wmv','.dat','.mp4','.sfv','.AVI','.VOB','.rmvb','.mpg']
      i++
      console.log r.substr(r.lastIndexOf('/') + 1,r.length - 1)
  console.log "total movie is #{i}"
  ###
  # Following code will list all the unique file extension names
  fileExt = new Object()
  for r in results
    fileExt[path.extname r] = ''
    console.log path.extname r
  ###
