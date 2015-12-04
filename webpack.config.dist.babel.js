import webpack from 'webpack';

export default {
  entry: './index.js',
  devtool: 'source-map',
  output: {
    path: './dist/',
    filename: 'es6-module.js',
    library: 'es6Module',
    libraryTarget: 'umd'
  },
  module: {
    loaders: [{
      test: /\.js$/,
      exclude: /node_modules/,
      loader: 'babel'
    }]
  }
};
