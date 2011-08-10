walk = require("./walk").walk
path = require("path")

walk "/Volumes/HACKING/MOVIES",(results)->
  for r in results
    if path.extname(r) in ['.avi','.DAT','.wmv','.dat','.mp4','.sfv','.AVI','.VOB','.rmvb','.mpg']
      console.log r.substr(r.lastIndexOf('/') + 1,r.length - 1)
  ###
  # Following code will list all the unique file extension names
  fileExt = new Object()
  for r in results
    fileExt[path.extname r] = ''
    console.log path.extname r
  ###
