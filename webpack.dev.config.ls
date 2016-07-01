require! <[webpack]>
BundleTracker = require 'webpack-bundle-tracker'
config = require './webpack.base.config.ls'

config.plugins = config.plugins.concat [
  new webpack.HotModuleReplacementPlugin!,
  new webpack.NoErrorsPlugin!,
  new BundleTracker { filename: './webpack-stats.json' },
]

config.dev-server =
  content-base: './assets/bundles/'
  public-path: '/assets/bundles'
  hot: true
  inline: true
  stats:
    chunkModules: false
    colors: true

module.exports = config
