Dashound API - Dashes
======================

At the heart of Dashhound are dashes, a dash is a single document containing all
the data.

> _NOTE_ the _rev attribute is not used and may be ignored.

```
{
   "_id": "99e25528075e355230d8ed5e2dc15233",
   "_rev": "72-bb5750fb203055f9cc448097f8069ade",
   "type": "datamatrix",
   "state": "sent",
   "user_id": "99e25528075e355230d8ed5e2dc0ff5d",
   "leader": "matt@dashhound.io",
   "network_id": "99e25528075e355230d8ed5e2dc1095a",
   "participants": [
       {
           "role": "follower",
           "notified": true,
           "message": "",
           "twitter": "@dashhoundio",
           "id": "faf185763f904bc1978e5e843a2a7bf7"
       }
   ],
   "title": "Television shows",
   "about": "",
   "multiple_replies": false,
   "email_on_reply": false,
   "recurring": false,
   "datapoints": [
       {
           "text": "The main topic of this dash.",
           "type": "topic",
           "values": "",
           "kpi": false,
           "mandatory": false,
           "show_in_form": true,
           "id": "2bdfe39ae4404e02806ac283f0c4c553"
       },
       {
           "kpi": false,
           "mandatory": false,
           "show_in_form": true,
           "default": "",
           "text": "How did you like the second season of Orphan Black ?",
           "type": "thumbs",
           "id": "fea9e25ba97246d484ce2daad920f7cf"
       }
   ],
   "created": "Wed Aug 13 2014 13:39:39 GMT+1000 (EST)",
   "modified": "Thu Aug 14 2014 10:56:24 GMT+1000 (EST)",
   "comments": [
       {
           "id": "44c05863dc8645bfa3fe30797b09b07b",
           "created": "Wed Aug 13 2014 13:42:09 GMT+1000 (EST)",
           "text": "Comment ?",
           "author": "matt@dashhound.io"
       },
       {
           "id": "659a87d6c481407da17173be9ad92ed1",
           "created": "Wed Aug 13 2014 13:49:39 GMT+1000 (EST)",
           "text": "Again ?",
           "author": "matt@dashhound.io"
       },
       {
           "id": "c9c37bc21db64cff9deb9ad54759c9b6",
           "created": "Wed Aug 13 2014 13:50:05 GMT+1000 (EST)",
           "text": "I expect requests",
           "author": "matt@dashhound.io"
       }
   ],
   "requests":[
      {
         "_id":"5db770288c168859ea2a2fe1a3104fea",
         "_rev":"6-8e1b457409f7045c2e243e2e6ece759d",
         "notified":true,
         "responses":[
            "What is the Topic for this dash?",
            "",
            ""
         ],
         "message":"This is a custom message for you",
         "channel":{
            "method":"email",
            "identifier":"matt@dashhound.io"
         },
         "isFollower":false,
         "dueDate":null,
         "dashId":"5db770288c168859ea2a2fe1a3103367",
         "created":"Sun Aug 17 2014 07:31:57 GMT+0000 (UTC)",
         "modified":"Sun Aug 17 2014 07:31:57 GMT+0000 (UTC)",
         "repeatable":true,
         "responded":false,
         "type":"request",
         "SMTP":{
            "request":"5db770288c168859ea2a2fe1a3104fea",
            "sg_event_id":"p9CnOs93TI-f46K3aOLk-g",
            "sg_message_id":"147e2e14187.6222.d1d40.filter-314.27203.53F05A6F10.0",
            "event":"processed",
            "email":"matt@dashhound.io",
            "smtp-id":"<1408260717678.cb1d17e3@Nodemailer>",
            "timestamp":1408260720,
            "dash":"5db770288c168859ea2a2fe1a3103367"
         }
      },
      {
         "_id":"5db770288c168859ea2a2fe1a310543f",
         "_rev":"4-7541c4074252df5c563c7a279a3fa1c9",
         "notified":false,
         "responses":[
            "What is the Topic for this dash?",
            "",
            ""
         ],
         "message":"",
         "channel":{
            "method":"sms",
            "identifier":"+612405001707"
         },
         "isFollower":false,
         "dueDate":null,
         "dashId":"5db770288c168859ea2a2fe1a3103367",
         "created":"Sun Aug 17 2014 07:32:25 GMT+0000 (UTC)",
         "modified":"Sun Aug 17 2014 07:32:25 GMT+0000 (UTC)",
         "repeatable":true,
         "responded":false,
         "type":"request"
      },
      {
         "_id":"5db770288c168859ea2a2fe1a3106178",
         "_rev":"2-b2ec51e73bbbbfc7a0e6ba2bd9750453",
         "notified":true,
         "responses":[
            "What is the Topic for this dash?",
            "",
            ""
         ],
         "message":"Test message from the sandbox account.",
         "channel":{
            "method":"twitter",
            "identifier":"@dashhoundio"
         },
         "isFollower":false,
         "dueDate":null,
         "dashId":"5db770288c168859ea2a2fe1a3103367",
         "created":"Sun Aug 17 2014 07:34:01 GMT+0000 (UTC)",
         "modified":"Sun Aug 17 2014 07:34:01 GMT+0000 (UTC)",
         "repeatable":true,
         "responded":false,
         "type":"request",
         "twitter":{
            "created_at":"Sun Aug 17 07:34:04 +0000 2014",
            "id":500908401681895400,
            "id_str":"500908401681895425",
            "text":"@dashhoundio Test message from the sandbox account. http://t.co/QhkXx60pXJ",
            "source":"<a href=\"http://www.dashhound.io\" rel=\"nofollow\">dashhound-testing</a>",
            "truncated":false,
            "in_reply_to_status_id":null,
            "in_reply_to_status_id_str":null,
            "in_reply_to_user_id":1140746419,
            "in_reply_to_user_id_str":"1140746419",
            "in_reply_to_screen_name":"dashhoundio",
            "user":{
               "id":2616263845,
               "id_str":"2616263845",
               "name":"Matt Vickers",
               "screen_name":"matt_dashhound",
               "location":"",
               "description":"",
               "url":null,
               "entities":{
                  "description":{
                     "urls":[

                     ]
                  }
               },
               "protected":false,
               "followers_count":3,
               "friends_count":1,
               "listed_count":0,
               "created_at":"Thu Jul 10 22:16:11 +0000 2014",
               "favourites_count":0,
               "utc_offset":null,
               "time_zone":null,
               "geo_enabled":false,
               "verified":false,
               "statuses_count":6,
               "lang":"en",
               "contributors_enabled":false,
               "is_translator":false,
               "is_translation_enabled":false,
               "profile_background_color":"C0DEED",
               "profile_background_image_url":"http://abs.twimg.com/images/themes/theme1/bg.png",
               "profile_background_image_url_https":"https://abs.twimg.com/images/themes/theme1/bg.png",
               "profile_background_tile":false,
               "profile_image_url":"http://pbs.twimg.com/profile_images/487373359932395522/8ZEufLGa_normal.jpeg",
               "profile_image_url_https":"https://pbs.twimg.com/profile_images/487373359932395522/8ZEufLGa_normal.jpeg",
               "profile_banner_url":"https://pbs.twimg.com/profile_banners/2616263845/1405033672",
               "profile_link_color":"0084B4",
               "profile_sidebar_border_color":"C0DEED",
               "profile_sidebar_fill_color":"DDEEF6",
               "profile_text_color":"333333",
               "profile_use_background_image":true,
               "default_profile":true,
               "default_profile_image":false,
               "following":false,
               "follow_request_sent":false,
               "notifications":false
            },
            "geo":null,
            "coordinates":null,
            "place":null,
            "contributors":null,
            "retweet_count":0,
            "favorite_count":0,
            "entities":{
               "hashtags":[

               ],
               "symbols":[

               ],
               "urls":[
                  {
                     "url":"http://t.co/QhkXx60pXJ",
                     "expanded_url":"http://dhd.io/Cl",
                     "display_url":"dhd.io/Cl",
                     "indices":[
                        52,
                        74
                     ]
                  }
               ],
               "user_mentions":[
                  {
                     "screen_name":"dashhoundio",
                     "name":"dashhound",
                     "id":1140746419,
                     "id_str":"1140746419",
                     "indices":[
                        0,
                        12
                     ]
                  }
               ]
            },
            "favorited":false,
            "retweeted":false,
            "possibly_sensitive":false,
            "lang":"en"
         }
      }
   ]
}
```

Requests
---------

The requests array is probably the most important attribute in a dash, it is an
array which contains request objects. A request object contains the channel the
request went out on as well as the response data from the request and a few extra
attributes pertaining to the channel response data.

A request which has gone out over an SMTP channel will look  like the following

```
{
   "_id":"5db770288c168859ea2a2fe1a3104fea",
   "_rev":"6-8e1b457409f7045c2e243e2e6ece759d",
   "notified":true,
   "responses":[
      "What is the Topic for this dash?",
      "",
      ""
   ],
   "message":"This is a custom message for you",
   "channel":{
      "method":"email",
      "identifier":"matt@dashhound.io"
   },
   "isFollower":false,
   "dueDate":null,
   "dashId":"5db770288c168859ea2a2fe1a3103367",
   "created":"Sun Aug 17 2014 07:31:57 GMT+0000 (UTC)",
   "modified":"Sun Aug 17 2014 07:31:57 GMT+0000 (UTC)",
   "repeatable":true,
   "responded":false,
   "type":"request",
   "SMTP":{
      "request":"5db770288c168859ea2a2fe1a3104fea",
      "sg_event_id":"p9CnOs93TI-f46K3aOLk-g",
      "sg_message_id":"147e2e14187.6222.d1d40.filter-314.27203.53F05A6F10.0",
      "event":"processed",
      "email":"matt@dashhound.io",
      "smtp-id":"<1408260717678.cb1d17e3@Nodemailer>",
      "timestamp":1408260720,
      "dash":"5db770288c168859ea2a2fe1a3103367"
   }
},
```

The responses are found within the responses array. The ordinality of the
response value matches the ordinality in the datapoints array. This may change in the future.

> _NOTE_ that the response values below will have the dashes truncated for brevity.


Authentication
---------------
All queries must be authenticated, see [Authentication](Authentication.md)


Fetching Dashes
---------------
Perform a ```GET``` request to ```/1.0/networks/#{ network id }/dashes/#{ dash id }```
or to ```/1.0/dashes/#{ dash id }```

The response will be

```javascript
{
  success: true,
  dash: {
    _id: 'bee3bc84285cc51a544d2631d803f149',
    title: 'Some fantastic title.'
    ...
  }
}
```
In the event of an error the return will have the success value set to false and
and [errorCode](ErrorCodes.md) attribute.

> Example [```fetchDash(...)```](code/api-dashes.coffee#L41)

Creating Dashes
---------------
In order to create a dash POST a request to ```/1.0/#{ network id }/dashes``` with
the body of the request being the dash to create

The request:

```javascript
{
   "user_id": "99e25528075e355230d8ed5e2dc0ff5d",
   "leader": "matt@dashhound.io",
   "network_id": "99e25528075e355230d8ed5e2dc1095a",
   "participants": [
       {
           "role": "follower",
           "message": "Custom message in here.",
           "twitter": "@dashhoundio",
       }
   ],
   "title": "Television shows",
   "about": "",
   "multiple_replies": false,
   "email_on_reply": false,
   "recurring": false,
   "datapoints": [
       {
           "text": "The main topic of this dash.",
           "type": "topic",
           "values": "",
           "kpi": false,
           "mandatory": false,
           "show_in_form": true,
           "id": "2bdfe39ae4404e02806ac283f0c4c553"
       },
       {
           "kpi": false,
           "mandatory": false,
           "show_in_form": true,
           "default": "",
           "text": "How did you like the second season of Orphan Black ?",
           "type": "thumbs",
           "id": "fea9e25ba97246d484ce2daad920f7cf"
       }
   ],
   "requests": [{
     "channel": {
       "method": 'email',
       "identifier": 'request@dashhound.io',
     }
   },{
     "message": 'Custom message here if you want, otherwise leave the attribute out.'
     "channel": {
       "method": 'sms',
       "identifier": '+614567891011',
     }
   },{
     "message": 'Custom message here.'
     "channel": {
       "method": 'twitter',
       "identifier": '@dashhoundio'
     }
   }]
 }
```

The response will be

```javascript
{
  success: true,
  dash: {
    _id: '99e25528075e355230d8ed5e2dc15233',
    "title": "Television shows",
    "about": "",
    "multiple_replies": false,
    "email_on_reply": false,
    "recurring": false,
    "state": "draft"
    ...
  }
}
```
In the event of an error the return will have the success value set to false and
and [errorCode](ErrorCodes.md) attribute.

It should be noted here that the state for a generated dash is automatically ```state: draft```.
If it is set to ```sent``` in the dash then it is in a released state and the requests are
sent.

> Example [```createDash(...)```](code/api-dashes.coffee#L57)

Updating Dashes
---------------

In order to update a dash PUT a request to ```/1.0/#{ network id }/dashes/#{ dash id }``` with
the body of the request being the dash to update, In the following example we have changed the state
from ```draft``` to ```sent``` and added a new text datapoint. Changing the state to ```sent```
has the effect of releasing the dash and notifying all the contributors in the requests array.

```javascript
{
  "_id": "99e25528075e355230d8ed5e2dc15233",
  "type": "datamatrix",
  "state": "sent",
  "title": "Television shows",
  "about": "",
  "multiple_replies": false,
  "email_on_reply": false,
  "recurring": false,
  "datapoints": [
    {
        "text": "The main topic of this dash.",
        "type": "topic",
        "values": "",
        "kpi": false,
        "mandatory": false,
        "show_in_form": true,
        "id": "2bdfe39ae4404e02806ac283f0c4c553"
    },
    {
        "kpi": false,
        "mandatory": false,
        "show_in_form": true,
        "default": "",
        "text": "How did you like the second season of Orphan Black ?",
        "type": "thumbs",
    },
    {
        "kpi": false,
        "mandatory": false,
        "show_in_form": true,
        "default": "",
        "text": "Why do you say that",
        "type": "text"
    }  
  ]
```
The response will be:

```javascript
{
  success: true,
  dash: {
    _id: '99e25528075e355230d8ed5e2dc15233',
    "title": "Television shows",
    "about": "",
    "multiple_replies": false,
    "email_on_reply": false,
    "recurring": false,
    "state": "sent"
    ...
  }
}
```

> Example [```updateDash(...)```](code/api-dashes.coffee#L106)


Deleting Dashes
---------------
Perform a ```DELETE``` request to ```/1.0/networks/#{ network id }/dashes/#{ dash id }```
or to ```/1.0/dashes/#{ dash id }```.

Response:

```javascript
{
  "success": true,
  "message": "Dash 99e25528075e355230d8ed5e2dc15233 deleted"
}
```
> Example [```deleteDash(...)```](code/api-dashes.coffee#L145)

Dash States
-----------

A dash has 3 states, ```draft```, ```sent``` and ```stopped``` the ```status```
attribute of the dash advises which state the dash is in. Setting this attribute
on the dash has the following effects:

```draft``` : the dash is not released, can not have any responses recorded and
no contributors have been notified.

```sent``` : the dash has been released, is available for gathering data and the
contributors have been notified.

```stopped``` : the dash has been stopped form gathering any data.

A dash can be changed from any of these states to any other.

DataPoints
----------

Datapoints are the main "questions" in a dash, they are held in the Dash in an
array under the attribute 'datapoint'. Each datapoint is displayed to the end user
on the response form unless the ```show_in_form``` value is set to false.

A datapoint has the following properties

| Attribute    | Description
|--------------|------------------------------------------------------------------
| id           | The unique id of this datapoint.
| text         | The question text
| type         | The datapoint type see [datapoint types](#datapoint-types)
| values       | The default values for the datapoint
| kpi          | Indicates that this datapoint is a key performance indicator
| mandatory    | Indicates that this datapoint must be filled in prior to submission
| show_in_form | Indicates that this datapoint is to be show to the end user.

> example datapoints array

```javascript
datapoints: [
  {
      "text": "The main topic of this dash.",
      "type": "topic",
      "values": "",
      "kpi": false,
      "mandatory": false,
      "show_in_form": true,
      "id": "2bdfe39ae4404e02806ac283f0c4c553"
  },
  {
      "kpi": false,
      "mandatory": false,
      "show_in_form": true,
      "default": "",
      "text": "How did you like the second season of Orphan Black ?",
      "type": "thumbs",
  },
  {
      "kpi": false,
      "mandatory": false,
      "show_in_form": true,
      "default": "",
      "text": "Why do you say that",
      "type": "text"
  }  
]
```

### DataPoint Types


| Type          | Description                                               | Extra attributes
|---------------|-----------------------------------------------------------|-------
| topic         | A fixed datapoint that acts as the topic of the datasheet.|
| photo         | An image taken from the phone or uploaded via the browser.|
| content_block | A block of content with basic styling using markdown.     |
| hidden        | A hidden datapoint, it is not shown to the end user.      |
| numerics      | Allows the input of numbers.                              |
| text          | Allows the input of text.                                 |
| range         | A range of integers.                                      | [Yes](#range-extra-attributes)
| picklist      | Displays a drop down list of values.                      | [Yes](#picklist-extra-attributes)
| thumbs        | Displays thumbs up and thumbs down.                       |
| traffic_lights| Displays the red, amber, green traffic lights             |
| rating        | Displays a row of stars.                                  | [Yes](#rating-extra-attributes)

#### Range extra attributes

The range datapoint has extra attributes for display, namely number, minimum
and caption. The ```number``` attribute defines the number of integers displayed, the
```minimum``` attribute defines the minimum value in the range and the ```caption```
attribute is an object which defines the labels displayed on the low and high values
of the range.

```javascript
  number: 10,
  minimum: 1,
  caption: {
    low: "Min Value",
    high: "Max Value"
}
```

#### Picklist extra attributes

The only extra attribute for the picklist is an array of values to display in the
drop down box.

```javascript
values: [
  "One fish",
  "Two fish",
  "Red fish",
  "Blue fish"
]
```

#### Rating extra attributes

The only extra attribute for the rating datapoint is the number of stars to display.

```javascript
number: 5
```
