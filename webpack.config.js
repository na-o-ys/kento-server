const webpack = require('webpack')
const path = require('path')

module.exports = {
  context: path.resolve("./kifu-parser"),
  entry: "./src.js",
  output: {
    path: "./kifu-parser",
    filename: "./build.js"
  },
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: [/node_modules/, /json-kifu-format/],
        loader: "babel-loader",
        query: {
          presets: ['es2015']
        }
      }
    ]
  }
}
