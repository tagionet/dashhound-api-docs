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

console.log "This is DEMO code for documentation purposes only\n"
console.log "API SANDBOX"
console.log "-----------"
console.log util.inspect sandbox


headers = createAPIHeaders('http://t.dashhound.io/', 'abcdefg','1234567', new Date().toISOString())
console.log "API HEADERS"
console.log "-----------"
console.log util.inspect headers
