crypto = require 'crypto'

hash = (data) ->
  return crypto.createHash('sha256').update(data).digest('hex');

createAPIHeaders = (url, key, secret, date) ->
  return {
    'X-DASHHOUND-KEY' : key,
    'X-DASHHOUND-TIMESTAMP' : date,
    'X-DASHHOUND-SIGNATURE' : hash(secret + '/' + url)
  }

console.log createAPIHeaders('http://t.dashhound.io/', 'abcdefg','1234567', new Date().toISOString())
