require! <[webpack]>
BundleTracker = require 'webpack-bundle-tracker'
config = require './webpack.base.config.ls'

config.output.path = require 'path' .resolve './assets/dist'

config.plugins = config.plugins.concat [
  new BundleTracker { filename: './webpack-stats-prod.json' },
  new webpack.DefinePlugin {
    'process.env': {
      'NODE_ENV': JSON.stringify 'production'
  } },
  new webpack.optimize.OccurenceOrderPlugin!,
  new webpack.optimize.UglifyJsPlugin {
    compressor: { warnings: false }
  }
]

module.exports = config
