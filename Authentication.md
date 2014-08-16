Authentication
==============

Authenticating to the API happens by utilising an API key a shared secret and some
custom headers and a SHA256 hash of shared secret and the URL.


Using the API key
-----------------

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

For instance in order for the [sandbox](sandbox.md) account to change a dash
with the id ```56284fc6b8a843f4bb9b9eff7e9a5d26```

_Note:_  The $HASH value in the following conversation is created from the code
[hash](code/hash.js)

> TODO: Put in a proper example showing all headers in conversation



```
PUT /56284fc6b8a843f4bb9b9eff7e9a5d26

X-DASHHOUND-KEY: ZXCV0987
X-DASHHOUND-TIMESTAMP: 2013-01-18T09:34:51.520Z
X-DASHHOUND-SIGNATURE: $HASH
{
  title: 'The title I have changed'
}
```
