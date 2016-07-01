require! <[webpack webpack-dev-server jsonfile]>
opt = jsonfile.read-file-sync \option.json
config = require \./webpack.dev.config.ls
config.proxy = {'*': "http://0.0.0.0:#{opt.django-port}"}

for name of config.entry
  config.entry[name].unshift "webpack-dev-server/client?http://0.0.0.0:#{opt.webpack-port}", \webpack/hot/only-dev-server
<-! (new webpack-dev-server webpack(config), config.dev-server).listen opt.webpack-port, \0.0.0.0
return console.log it if it
console.log "webpack-dev-server on port #{opt.webpack-port}"
