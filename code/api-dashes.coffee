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
      if data.success == true
        console.log data.dashes
      else
        console.log "#{ data.errorCode } : #{ data.message }"

fetchDash = () ->
  url = "/1.0/networks/#{ sandbox.networkId }/dashes/#{ sandbox.dashId }"
  apiHeaders = authentication.createAPIHeaders(url, sandbox.api.key, sandbox.api.secret, new Date().toISOString());
  request {
    url: BASEURI + url,
    method: 'GET',
    headers: apiHeaders
  }, (err, res, body) ->
    if err
      console.log "Error: #{ util.inspect err }"
    else
      if data.success == true
        console.log data.dashes
      else
        console.log "#{ data.errorCode } : #{ data.message }"

createDash = () ->
  url = "/1.0/networks/#{ sandbox.networkId }/dashes"
  apiHeaders = authentication.createAPIHeaders(url, sandbox.api.key, sandbox.api.secret, new Date().toISOString());
  request {
    url: BASEURI + url,
    method: 'POST',
    headers: apiHeaders
    json: {
        title: 'Testing Dash',
        datapoints: [{
          text: "Data Point Text",
          "default": "Default Text",
          type: "text",
          show_in_form: false,
          mandatory: false,
          kpi: ""
        }],
        participants: [ {
          email: 'matthew+observer@dashhound.io',
          role: 'observer'
        }],
        requests: [{
          channel: {
            method: 'email',
            identifier: 'matthew@dashhound.io'
          }
        },{
          channel: {
            method: 'sms',
            identifier: '+61456789123',
          }
        },{
          message: "$$HANDLE Great observations, tell us more at $$URL "
          channel: {
            method: "twitter"
            handle: "@dashhoundio"
          }
        }
        ]
      }
  }, (err, res, body) ->
    if err
      console.log "Error: #{ util.inspect err }"
    else
      if data.success == true
        console.log data.dash
      else
        console.log "#{ data.errorCode } : #{ data.message }"

updateDash = () ->
  url = "/1.0/networks/#{ sandbox.networkId }/dashes/#{ sandbox.dashId }"
  apiHeaders = authentication.createAPIHeaders(url, sandbox.api.key, sandbox.api.secret, new Date().toISOString());
  request {
    url: BASEURI + url,
    method: 'PUT',
    headers: apiHeaders
    json: {
        title: 'Changed title - BOOM !',
        datapoints: [{
          text: "How many partridges in the pear tree ?",
          default: "",
          type: "range",
          number: 10,
          minimum: 0,
          kpi: false,
          mandatory: true,
          show_in_form: true
        }],
        participants: [{
          email: 'second+observer@dashhound.io',
          role: 'observer'
        }],
        requests: [{
          channel: {
            method: 'email',
            identifier: 'another@dashhound.io'
          }
        }]
      }
  }, (err, res, body) ->
    if err
      console.log "Error: #{ util.inspect err }"
    else
      if data.success == true
        console.log data.dash
      else
        console.log "#{ data.errorCode } : #{ data.message }"

deleteDash = () ->
  url = "/1.0/networks/#{ sandbox.networkId }/dashes/#{ sadnbox.dashId }"
  apiHeaders = authentication.createAPIHeaders(url, sandbox.api.key, sandbox.api.secret, new Date().toISOString());
  request {
    url: BASEURI + url,
    method: 'DELETE',
    headers: apiHeaders
  }, (err, res, body) ->
    if err
      console.log "Error: #{ util.inspect err }"
    else
      console.log data
