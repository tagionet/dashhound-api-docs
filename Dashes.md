Dashoound API - Dashes
======================

At the heart of Dashhound are dashes, a dash is a single document containing all
the data.

_NOTE_ the _rev attribute is not used and may be ignored.

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

The requests array is probably the most important thing in a dash, they are an  
object containing the request and the channel the request went out on as well
as the response data from the request.

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

_NOTE_ that the response values below will have the dashes truncated for brevity.


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
In the event of an error the return will have the success value set to fale and
and [errorCode](ErrorCodes.md) attribute.


Creating Dashes
---------------
In order to create a dash POST a request to ```/1.0/#{ network id }/dashes```

Example ```hash(...)```](code/api-dashes.coffee)

Updating Dashes
---------------

Deleting Dashes
---------------

Releasing Dashes
----------------
