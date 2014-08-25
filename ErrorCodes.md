# Error Codes returned from the DashHound API


| Error Code | HTTP status | Error Description
----------------------------------------------------------------------------
| C1         | 500         | Unable to add comment for #{ req.UserId }

| D1         | 501         | API version not implemented
| D2         | 500         | Unable to fetch Dashe(s) because of an internal error
| D3         | 404         | Unable to fetch Dashes
| D4         | 500         | Unable to create a Dash
| D5		     | 404		     | Your account is not a member of this network
| D6		     | 500		     | Unable to fetch Dash for this user because of an internal error
| D7		     | 500         | Unable to fetch user details for user #{ id }
| D8		     | 500         | Unable to delete dash #{ id }
| D9		     | 500		     | Unable to update this dash because of an internal error
| D10		     | 500		     | Unable to notify the participants because of an internal error #{ err }
| D11		     | 404		     | Dash #{ id } doesn't exist in the system.
| D12        | 404         | Dash #{ id } has no requests.

| N1		     | 404		     | Network #{ id } doesn't exist in the system.
| N2		     | 500		     | Unable to fetch this network because of an internal error
| N3		     | 500		     | Unable to update network #{ id } because of an internal error
| N4		     | 500		     | Unable to fetch networks for user #{ id } because of an internal error.
| N5		     | 404		     | User #{ id } has no networks.

| P1		     | 400         | Unknown parameter passed in query
| P2		     | 500         | Unable to fetch profile for user #{ id }
| P3         | 500         | Unable to delete profile for user #{ id }
| P4         | 400         | No profile changes have been detected for #{ id }
| P5         | 500         | Unable to update profile for user #{ id }
| P6         | 500         | Unable to create an API key for user #{ id }

| M1         |             | No members have been passed in the post body.
| M2         |             | Unable to delete a member

| R1         | 500         | Unable to fetch request #{ id } : #{ error }
| R2		     | 500         | Unable to save response for #{ id } : #{ error }
| R3		     | 500         | Unable to fetch requests for #{ email } : #{ error }
| R4		     | 200         | No requests found for #{ email }
| R5		     | 200		     | This dash has been stopped from gathering anymore data
| R6		     | 200 		     | This dash doesn't exist for gathering requests
| R7		     | 501 		     | Social request contained no responses.
| R8		     | 404 		     | Request #{ id } doesn't exist in the system.
| R9		     | 400 		     | Channel missing from request #{ request }
| R10		     | 500 		     | Unable to delete request #{ request._id } : #{ error }

| S1         | 400         | Incorrect parameters passed for signup.
| S2		     | 400         | Passwords don't match.
| S3		     | 400		     | The email address is invalid.
| S4		     | 400         | This email address is already in use.
| S5         | 500         | Unable to fetch Users because of an internal error.
| S6		     | 500		     | Unable to signup user #{ email } : #{ err }
| SE1		     | 400		     | Missing search terms.
| SE2        | 500         | An error has occurred.

| T1		     | 404		     | Template #{ id } does not exist.
| T2         | 500         | Unable to fetch Templates because of an internal error
| T3         | 404         | Unable to fetch Templates
| T4         | 500         | Unable to create a Template
| T5		     | 404		     | Your account is not a member of this network
| T6		     | 500		     | Unable to fetch Templates for this user because of an internal error
| T7		     | 500		     | Unable to delete this Template
| T8		     | 500		     | Unable to fetch this template because of an internal error.
| T9		     | 500		     | Unable to fetch the system templates.
| T10		     | 403		     | Your account does not have permission to create a dash from this template.

| TI1        | 500         | Unable to fetch tiles for user #{ userId } because of an internal error
| TI2        | 500         | Unable to fetch tiles for user #{ userEmail } because of an internal error
| TI3        | 500         | Unable to fetch tiles for network #{ networkId } because of an internal error
| TI4        | 500         | Unable to fetch tiles for observer #{ observerEmail } because of an internal error

| U1		     | 500		     | Unable to fetch this user because of an internal error.
| U2		     | 404		     | User #{ email } does not exist.
| U3		     | 404		     | Twitter request token #{ token } does not exist.

| V1		     | 400		     | This account has not been verified.
| V2		     | 500		     | Unable to verify account #{ id } : #{ error }
| V3		     | 500		     | Unable to update account #{ id } : #{ error }
