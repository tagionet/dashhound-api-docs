DashHound-API
=============

The DashHound API exposes dashes to the user by utilising
[REST](http://http://en.wikipedia.org/wiki/Representational_state_transfer)
techniques via HTTP.  The Base URL for the api is (api1.dashhound.io) and the test
api can be found at (https://t-api.dashound.io).

_Note:_ This document is set to wordwrap at 78 columns.  Some code blocks may
looks strange because of this.

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


Authentication
--------------

In order to perform any actions on the API the end user _must_ have authenticated, see [Authentication](Authentication.md)

Profiles
--------

### Fetching a profile

Perfom a GET request to ``/1.0/profile/:id` see [fetchProfile(...)](code/api-users.coffee)

The response mimetype will be ```application/json``` and the response will be a JSON document containing the requested profile.

```javascript
{
	_id: bee3bc84285cc51a544d2631d803f149
	_rev: 1-c5b78c915428420c76f8cbf2c3895898
	email:	example@example.com
	show_welcome_screen: false
	username: 'An Example'
	...
}
```

### Saving a profile

Perform a PUT request to ``/profile/#{ profileId }` with the fields to change as the HTTP body see [updateProfile(...)](code/api-users.coffee)

Request

```javascript
{
	email:	myemail@gmail.com
}
```

The response mimetype will be ```application/json``` and the response will be a JSON document containing the changed profile.

Response

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

Perform a DELETE request to ```/profile/#{ profileId }``` see [deleteProfile(...)](code/api-users.coffee)

Response

The response mimetype will be ```application/json``` and the response will be a json document with a success flag. Once a profile has been deleted the session associated with it will have been destroyed and no API calls for that user will work.

```javascript
{
	success: true
}
```


Dashes
------

Examples [code/api-dashes](code/api-dashes.coffee)

### Creating a dash

See [Dashes](Dashes.coffee#creating_dashes)


### Fetching a Dash

Perfom a GET request to ```/dash/:id``` where ```:id``` is the id of the Dash wanted.

```
curl -X GET http://t..dashhound.io/dash/bee3bc84285cc51a544d2631d803f149
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
