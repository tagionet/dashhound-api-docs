crypto = require 'crypto'
util = require 'util'
sandbox = require './sandbox'

# Create a hash that the API can use.
hash = (data) ->
  return crypto.createHash('sha256').update(data).digest('hex');

# Create the API headers that are required for authentication
createAPIHeaders = (url, key, secret, date) ->
  return {
    'X-DASHHOUND-KEY' : key,
    'X-DASHHOUND-TIMESTAMP' : date,
    'X-DASHHOUND-SIGNATURE' : hash(secret + '/' + url)
  }

exports.hash = hash
exports.createAPIHeaders = createAPIHeaders
