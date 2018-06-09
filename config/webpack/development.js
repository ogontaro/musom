process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()

environment.loaders.set('eslint', {
  test: /\.(js|vue)$/,
  loader: 'eslint-loader',
  enforce: 'pre',
  options: {
    failOnWarning: true
  }
})
