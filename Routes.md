Dashhound API Routes
====================

Dashhound is run on two instances test (https://t.dashhound.io) and
production (https://dashhound.io). Ensure you place the instance before the
route.


```GET /ping```

```GET /1.0/dashes```

```GET /1.0/networks/#{ NETWORKID }/dashes```
Response
```
{
  success: true
  dashes: [
  
  ]
}
```


```GET /1.0/networks/#{ NETWORKID }/dashes/#{ DASHID }```
