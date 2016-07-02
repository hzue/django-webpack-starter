require! <[path webpack nib]>
BundleTracker = require \webpack-bundle-tracker

module.exports =
  context: __dirname
  entry:
    example: [path.resolve './assets/example/App.jsx']
  output:
    path: path.resolve './assets/bundles/'
    filename: "[name]-[hash].js"
  plugins: [new webpack.Provide-plugin jQuery: \jquery $: \jquery app: \app React: \react]
  module:
    loaders:
      * test: /\.css$/  loader: \style!css
      * test: /\.eot(\?v=\d+\.\d+\.\d+)?$/ loader: \url-loader
      * test: /\.(jpg|jpeg|png|bmp|gif)$/  loader: \url-loader?limit=10000
      * test: /\.json$/ loader: \json-loader
      * test: /\.jsx?$/ exclude: /\/node_modules\/|\/lib\// loader: \babel query: presets: <[react es2015]>
      * test: /\.ls$/   loader: \livescript
      * test: /\.mp3/   loader: \url-loader
      * test: /\.styl$/ loader: \style!css!stylus
      * test: /\.svg(\?v=\d+\.\d+\.\d+)?$/    loader: \url-loader?limit=10000&mimetype=image/svg+xml
      * test: /\.text$/ loader: \raw
      * test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/    loader: \url-loader?limit=10000&mimetype=application/octet-stream
      * test: /\.woff2?(\?v=\d+\.\d+\.\d+)?$/ loader: \url-loader?limit=10000&mimetype=application/font-woff
    no-parse: /jquery|react.js/
  resolve:
    alias:
      jquery: \jquery/dist/jquery.min.js
      react: \react/dist/react.js
      react-dom: \react-dom/dist/react-dom.js
      semantic-css: \semantic-ui-css/semantic.min.css
      semantic-js: \semantic-ui-css/semantic.min.js
    modulesDirectories: <[node_modules bower_components]>
    extensions: ['', '.js', '.jsx']
  stylus:
    use: [nib!]
