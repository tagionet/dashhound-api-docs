Dashhound API Routes
====================

Dashhound is run on two instances test (https://t.dashhound.io) and
production (https://dashhound.io). Ensure you place the instance before the
route.

If there is an error in any call to the API the response will be an HTTP code
and a JSON response containing a success parameter and a message for error or
the resource requested.


Fetching dashes see [fetchDashes(...)](code/api-fetch-dashes.coffee#L8)
--------------------------------------------------------------
```GET /1.0/dashes```

Response 200 on success

```
{
  success: true
  dashes: [

  ]
}
```

Fetching dashes in a particular network [fetchViaNetwork(...)](code/api-fetch-dashes.coffee)
--------------------------------------------------------------------------------------------
```GET /1.0/networks/#{ NETWORKID }/dashes```

Response

```
{
  success: true
  dashes: [

  ]
}
```

Fetching a dash [fetchDash(...)](code/api-fetch-dashes.coffee)
--------------------------------------------------------------
```GET /1.0/dashes/#{ DASHID }```

Response

```
{
  success: true
  dash: {

  }
}
```
Fetching a dash in a particular network [fetchDashInNetwork(...)](code/api-fetch-dashes.coffee)
--------------------------------------------------------------
```GET /1.0/networks/#{ NETWORKID }/dashes/#{ DASHID }```

Response

```
{
  success: true
  dash: {

  }
}
```
