DashHound-API
=============

The DashHound API exposes dashes to the user by utilising
[REST](http://http://en.wikipedia.org/wiki/Representational_state_transfer)
techniques via HTTP.  The Base URL for the api is api.dashhound.io and the test
api can be found at test.api.dashound.io.

_Note:_ This document is set to wordwrap at 78 columns.  Some code block may
looks strange because of this.


Authentication
--------------

Authenticating to the API happens by utilising an API key a shared secret and some
custom headers and a SHA256 hash of shared secret and the URL.


### Using the API key

The API may be used by other applications and in order to do so the end user
must set a number of custom headers in order to authenticate and authorise each
request.  When a DashHound account applies for an API key one is generated for
them along with a shared secret.  The shared secret _should_ only be known to
the API user and DashHound and will _never_ be passed to the DashHound API
in plain text.  

The custom headers are:

```
X-DASHHOUND-KEY: End user's API key
X-DASHHOUND-TIMESTAMP: Date and Time of the generated request in full ISO8601 format
X-DASHHOUND-SIGNATURE: SHA256 hash of Shared Secret and the URL
```

For instance in order for an account with the API key of ```ZXCV0987``` and shared secret of ```SharedSecret``` to change their Dash with the ID ```ABCD1234``` the request would look like the following:

_Note:_  Assume that ```$HASH = SHA256('SharedSecret/ABCD1234')``` in the following conversation.

> TODO: Put in a proper example showing all headers in conversation



```
PUT /ABCDEFG

X-DASHHOUND-KEY: ZXCV0987
X-DASHHOUND-TIMESTAMP: 2013-01-18T09:34:51.520Z
X-DASHHOUND-SIGNATURE: $HASH
{
	title: 'The title I have changed'
}
```

#### Date Format for the API

The date format should be in ISO8601 format to avoid ambiguities between timezones.  
The DashHound API calculates the difference between when the time the request was created
and the time the request was received.  If this difference is greater or less than three
minutes the authentication fails.  This is to avoid replay attacks.

javascript

```javascript
	var date = new Date();
	console.log(date.toISOString());

	> 2013-01-18T09:40:15Z
```
or ruby

```ruby
	require 'time'
	time = Time.now.utc.iso8601
	puts time

	> 2013-01-18T09:40:15Z
```
or perl

```perl
	use strict;
	use POSIX qw(strftime);
	my $now = time();
	my $tz = strftime("%z", localtime($now));
	$tz =~ s/(\d{2})(\d{2})/$1:$2/;
	print strftime("%Y-%m-%dT%H:%M:%S", localtime($now)) . $tz . "\n";

	> 2013-01-18T09:40:15Z
```

As always a ```200``` response means the request was successful and a ```403``` forbidden means the response was ignored due to auth problems.

### By using Oauth

> TODO: Implement Oauth authentication

Profiles
--------

### Fetching a profile

Perfom a GET request to ```/profile/:id```

```
curl -X GET http://api.dashhound.io/profile/bee3bc84285cc51a544d2631d803f149
```

The response mimetype will be ```application/json``` and the response will be a json document containing the requested profile.

```javascript
{
	_id: bee3bc84285cc51a544d2631d803f149
	_rev: 1-c5b78c915428420c76f8cbf2c3895898
	email:	example@example.com
	show_welcome_screen: false
	username: 'An Example'
}
```

### Saving a profile

Perform a PUT request to ```/profile/bee3bc84285cc51a544d2631d803f149``` with the fields to change as the HTTP body

```
curl -X PUT http://api.dashhound.io/profile -d '{ "email": "myemail@gmail.com", "show_welcome_screen":true}'
```

The response mimetype will be ```application/json``` and the response will be a json document containing the changed profile.

```javascript
{
	_id: bee3bc84285cc51a544d2631d803f149
	_rev: 1-c5b78c915428420c76f8cbf2c3895898
	email:	myemail@gmail.com
	show_welcome_screen: true
	username: 'An Example'
}
```

### Deleting a profile

Perform a DELETE request to ```/profile/bee3bc84285cc51a544d2631d803f149```

```
curl -X DEL http://api.dashhound.io/profile/bee3bc84285cc51a544d2631d803f149
```

The response mimetype will be ```application/json``` and the response will be a json document with a success flag. Once a profile has been deleted the session associated with it will have been destroyed and no API calls for that user will work.

```javascript
{
	success: true
}
```


Dashes
------

Most activity in DashHound is based around Dashes. (Written explaination of what a dash is should go here)

### Creating a Dash

In order to create a Dash the end user _must_ have previously authenticated themself by utilising one of the above techniques. See [Authentication](#authentication)


### Fetching a Dash

Perfom a GET request to ```/dash/:id``` where ```:id``` is the id of the Dash wanted.

```
curl -X GET http://api.dashhound.io/dash/bee3bc84285cc51a544d2631d803f149
```

The response mimetype will be `application/json` and the response will be a json document containing the requested dash.

> TODO: Fill in more of the dash

```javascript
{
  id: bee3bc84285cc51a544d2631d803f149,
  title: ''
}
```

If no dash has been found with the passed id then a ```404``` will be generated.

As always if the end user is unauthenticated then a ```403``` will be raised.

### Updating a Dash

In order to update a dash a ```PUT``` request needs to be sent to the URL ```http://api.dashound.io/dash/:id``` along with the json body containing the attributes of the dash that you would like changed

```javascript
PUT http://api.dashhound.io/bee3bc84285cc51a544d2631d803f149 -d '{ "title":"A changed title here" }'
```
> TODO: Fill in more of the dash

```javascript
{
  id: bee3bc84285cc51a544d2631d803f149,
  title: 'A changed title here'
  ...
}
```

### Creating a dash

In order to create a dash a ```POST``` request needs to be sent to the URL ```http://api.dashound.io/dash```

```javascript
POST http://api.dashhound.io/dash -d '{ "title":"Brand new dash", .... }'
```
> TODO: Fill in more of the dash

```javascript
{
 	_id: bee3bc84285cc51a544d2631d803f149
	_rev: 1-c5b78c915428420c76f8cbf2c3895898
	title: "Brand new dash"
	...
}
```

### Deleting a Dash

In order to delete a dash a ```DELETE``` request needs to be sent to the URL ```http://api.dashound.io/dash/:id```

```javascript
DELETE http://api.dashhound.io/dash/bee3bc84285cc51a544d2631d803f149
```
And the return JSON will be

```javascript
{
  success: true
}
```
