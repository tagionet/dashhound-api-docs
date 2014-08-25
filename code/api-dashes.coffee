util = require 'util'
request = require 'request'
sandbox = require './sandbox'
authentication = require './api-authentication'

BASEURI = 'https://t-api.dashhound.io'

fetchDashes = () ->
  url = '/1.0/dashes'
  apiHeaders = authentication.createAPIHeaders(url, sandbox.api.key, sandbox.api.secret, new Date().toISOString());
  request {
    url: BASEURI + url,
    method: 'GET',
    headers: apiHeaders
  }, (err, res, body) ->
    if err
      console.log "Error: #{ util.inspect err }"
    else
      data = JSON.parse(body)
      if data.success == true
        console.log data.dashes
      else
        console.log "#{ data.errorCode } : #{ data.message }"

fetchDashesInNetwork = () ->
  url = "/1.0/networks/#{ sandbox.networkId }/dashes"
  apiHeaders = authentication.createAPIHeaders(url, sandbox.api.key, sandbox.api.secret, new Date().toISOString());
  request {
    url: BASEURI + url,
    method: 'GET',
    headers: apiHeaders
  }, (err, res, body) ->
    if err
      console.log "Error: #{ util.inspect err }"
    else
      console.log body
      #data = JSON.parse(body)
      if data.success == true
        console.log data.dashes
      else
        console.log "#{ data.errorCode } : #{ data.message }"

fetchDashesInNetwork()
