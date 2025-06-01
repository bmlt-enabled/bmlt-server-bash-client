# RootServerApi

All URIs are relative to */main_server*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authLogout**](RootServerApi.md#authLogout) | **POST** /api/v1/auth/logout | Revokes a token
[**authRefresh**](RootServerApi.md#authRefresh) | **POST** /api/v1/auth/refresh | Revokes and issues a new token
[**authToken**](RootServerApi.md#authToken) | **POST** /api/v1/auth/token | Creates a token
[**createErrorTest**](RootServerApi.md#createErrorTest) | **POST** /api/v1/errortest | Tests some errors
[**createFormat**](RootServerApi.md#createFormat) | **POST** /api/v1/formats | Creates a format
[**createMeeting**](RootServerApi.md#createMeeting) | **POST** /api/v1/meetings | Creates a meeting
[**createServiceBody**](RootServerApi.md#createServiceBody) | **POST** /api/v1/servicebodies | Creates a service body
[**createUser**](RootServerApi.md#createUser) | **POST** /api/v1/users | Creates a user
[**deleteFormat**](RootServerApi.md#deleteFormat) | **DELETE** /api/v1/formats/{formatId} | Deletes a format
[**deleteMeeting**](RootServerApi.md#deleteMeeting) | **DELETE** /api/v1/meetings/{meetingId} | Deletes a meeting
[**deleteServiceBody**](RootServerApi.md#deleteServiceBody) | **DELETE** /api/v1/servicebodies/{serviceBodyId} | Deletes a service body
[**deleteUser**](RootServerApi.md#deleteUser) | **DELETE** /api/v1/users/{userId} | Deletes a user
[**getFormat**](RootServerApi.md#getFormat) | **GET** /api/v1/formats/{formatId} | Retrieves a format
[**getFormats**](RootServerApi.md#getFormats) | **GET** /api/v1/formats | Retrieves formats
[**getLaravelLog**](RootServerApi.md#getLaravelLog) | **GET** /api/v1/logs/laravel | Retrieves laravel log
[**getMeeting**](RootServerApi.md#getMeeting) | **GET** /api/v1/meetings/{meetingId} | Retrieves a meeting
[**getMeetingChanges**](RootServerApi.md#getMeetingChanges) | **GET** /api/v1/meetings/{meetingId}/changes | Retrieve changes for a meeting
[**getMeetings**](RootServerApi.md#getMeetings) | **GET** /api/v1/meetings | Retrieves meetings
[**getRootServer**](RootServerApi.md#getRootServer) | **GET** /api/v1/rootservers/{rootServerId} | Retrieves a root server
[**getRootServers**](RootServerApi.md#getRootServers) | **GET** /api/v1/rootservers | Retrieves root servers
[**getServiceBodies**](RootServerApi.md#getServiceBodies) | **GET** /api/v1/servicebodies | Retrieves service bodies
[**getServiceBody**](RootServerApi.md#getServiceBody) | **GET** /api/v1/servicebodies/{serviceBodyId} | Retrieves a service body
[**getUser**](RootServerApi.md#getUser) | **GET** /api/v1/users/{userId} | Retrieves a single user
[**getUsers**](RootServerApi.md#getUsers) | **GET** /api/v1/users | Retrieves users
[**partialUpdateUser**](RootServerApi.md#partialUpdateUser) | **PATCH** /api/v1/users/{userId} | Patches a user
[**patchFormat**](RootServerApi.md#patchFormat) | **PATCH** /api/v1/formats/{formatId} | Patches a format
[**patchMeeting**](RootServerApi.md#patchMeeting) | **PATCH** /api/v1/meetings/{meetingId} | Patches a meeting
[**patchServiceBody**](RootServerApi.md#patchServiceBody) | **PATCH** /api/v1/servicebodies/{serviceBodyId} | Patches a service body
[**updateFormat**](RootServerApi.md#updateFormat) | **PUT** /api/v1/formats/{formatId} | Updates a format
[**updateMeeting**](RootServerApi.md#updateMeeting) | **PUT** /api/v1/meetings/{meetingId} | Updates a meeting
[**updateServiceBody**](RootServerApi.md#updateServiceBody) | **PUT** /api/v1/servicebodies/{serviceBodyId} | Updates a Service Body
[**updateUser**](RootServerApi.md#updateUser) | **PUT** /api/v1/users/{userId} | Update single user



## authLogout

Revokes a token

Revoke token and logout.

### Example

```bash
bmlt-cli authLogout
```

### Parameters

This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## authRefresh

Revokes and issues a new token

Refresh token.

### Example

```bash
bmlt-cli authRefresh
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Token**](Token.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## authToken

Creates a token

Exchange credentials for a new token

### Example

```bash
bmlt-cli authToken
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenCredentials** | [**TokenCredentials**](TokenCredentials.md) | User credentials |

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createErrorTest

Tests some errors

Tests some errors.

### Example

```bash
bmlt-cli createErrorTest
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **errorTest** | [**ErrorTest**](ErrorTest.md) | Pass in error test object. |

### Return type

[**ErrorTest**](ErrorTest.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createFormat

Creates a format

Creates a format.

### Example

```bash
bmlt-cli createFormat
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formatCreate** | [**FormatCreate**](FormatCreate.md) | Pass in format object |

### Return type

[**Format**](Format.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createMeeting

Creates a meeting

Creates a meeting.

### Example

```bash
bmlt-cli createMeeting
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingCreate** | [**MeetingCreate**](MeetingCreate.md) | Pass in meeting object |

### Return type

[**Meeting**](Meeting.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createServiceBody

Creates a service body

Creates a service body.

### Example

```bash
bmlt-cli createServiceBody
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceBodyCreate** | [**ServiceBodyCreate**](ServiceBodyCreate.md) | Pass in service body object |

### Return type

[**ServiceBody**](ServiceBody.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createUser

Creates a user

Creates a user.

### Example

```bash
bmlt-cli createUser
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCreate** | [**UserCreate**](UserCreate.md) | Pass in user object |

### Return type

[**User**](User.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteFormat

Deletes a format

Deletes a format by id.

### Example

```bash
bmlt-cli deleteFormat formatId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formatId** | **integer** | ID of format | [default to null]

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteMeeting

Deletes a meeting

Deletes a meeting by id.

### Example

```bash
bmlt-cli deleteMeeting meetingId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingId** | **integer** | ID of meeting | [default to null]

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteServiceBody

Deletes a service body

Deletes a service body by id.

### Example

```bash
bmlt-cli deleteServiceBody serviceBodyId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceBodyId** | **integer** | ID of service body | [default to null]

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteUser

Deletes a user

Deletes a user by id

### Example

```bash
bmlt-cli deleteUser userId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **integer** | ID of user | [default to null]

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFormat

Retrieves a format

Retrieve a format

### Example

```bash
bmlt-cli getFormat formatId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formatId** | **integer** | ID of format | [default to null]

### Return type

[**Format**](Format.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFormats

Retrieves formats

Retrieve formats

### Example

```bash
bmlt-cli getFormats
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[Format]**](Format.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLaravelLog

Retrieves laravel log

Retrieve the laravel log if it exists.

### Example

```bash
bmlt-cli getLaravelLog
```

### Parameters

This endpoint does not need any parameter.

### Return type

**binary**

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/gzip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMeeting

Retrieves a meeting

Retrieve a meeting.

### Example

```bash
bmlt-cli getMeeting meetingId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingId** | **integer** | ID of meeting | [default to null]

### Return type

[**Meeting**](Meeting.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMeetingChanges

Retrieve changes for a meeting

Retrieve all changes made to a specific meeting.

### Example

```bash
bmlt-cli getMeetingChanges meetingId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingId** | **integer** | ID of the meeting | [default to null]

### Return type

[**array[MeetingChangeResource]**](MeetingChangeResource.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMeetings

Retrieves meetings

Retrieve meetings for authenticated user.

### Example

```bash
bmlt-cli getMeetings  meetingIds=value  days=value  serviceBodyIds=value  searchString=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingIds** | **string** | comma delimited meeting ids | [optional] [default to null]
 **days** | **string** | comma delimited day ids between 0-6 | [optional] [default to null]
 **serviceBodyIds** | **string** | comma delimited service body ids | [optional] [default to null]
 **searchString** | **string** | string | [optional] [default to null]

### Return type

[**array[Meeting]**](Meeting.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRootServer

Retrieves a root server

Retrieve a single root server id.

### Example

```bash
bmlt-cli getRootServer rootServerId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rootServerId** | **integer** | ID of root server | [default to null]

### Return type

[**RootServer**](RootServer.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRootServers

Retrieves root servers

Retrieve root servers.

### Example

```bash
bmlt-cli getRootServers
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[RootServer]**](RootServer.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getServiceBodies

Retrieves service bodies

Retrieve service bodies for authenticated user.

### Example

```bash
bmlt-cli getServiceBodies
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[ServiceBody]**](ServiceBody.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getServiceBody

Retrieves a service body

Retrieve a single service body by id.

### Example

```bash
bmlt-cli getServiceBody serviceBodyId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceBodyId** | **integer** | ID of service body | [default to null]

### Return type

[**ServiceBody**](ServiceBody.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getUser

Retrieves a single user

Retrieve single user.

### Example

```bash
bmlt-cli getUser userId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **integer** | ID of user | [default to null]

### Return type

[**User**](User.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getUsers

Retrieves users

Retrieve users for authenticated user.

### Example

```bash
bmlt-cli getUsers
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[User]**](User.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## partialUpdateUser

Patches a user

Patches a user by id.

### Example

```bash
bmlt-cli partialUpdateUser userId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **integer** | ID of user | [default to null]
 **userPartialUpdate** | [**UserPartialUpdate**](UserPartialUpdate.md) | Pass in fields you want to update. |

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchFormat

Patches a format

Patches a single format by id.

### Example

```bash
bmlt-cli patchFormat formatId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formatId** | **integer** | ID of format | [default to null]
 **formatPartialUpdate** | [**FormatPartialUpdate**](FormatPartialUpdate.md) | Pass in fields you want to update. |

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchMeeting

Patches a meeting

Patches a meeting by id

### Example

```bash
bmlt-cli patchMeeting meetingId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingId** | **integer** | ID of meeting | [default to null]
 **meetingPartialUpdate** | [**MeetingPartialUpdate**](MeetingPartialUpdate.md) | Pass in fields you want to update. |

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchServiceBody

Patches a service body

Patches a single service body by id.

### Example

```bash
bmlt-cli patchServiceBody serviceBodyId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceBodyId** | **integer** | ID of service body | [default to null]
 **serviceBodyPartialUpdate** | [**ServiceBodyPartialUpdate**](ServiceBodyPartialUpdate.md) | Pass in fields you want to update. |

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateFormat

Updates a format

Updates a format.

### Example

```bash
bmlt-cli updateFormat formatId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formatId** | **integer** | ID of format | [default to null]
 **formatUpdate** | [**FormatUpdate**](FormatUpdate.md) | Pass in format object |

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateMeeting

Updates a meeting

Updates a meeting.

### Example

```bash
bmlt-cli updateMeeting meetingId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingId** | **integer** | ID of meeting | [default to null]
 **meetingUpdate** | [**MeetingUpdate**](MeetingUpdate.md) | Pass in meeting object |

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateServiceBody

Updates a Service Body

Updates a single service body.

### Example

```bash
bmlt-cli updateServiceBody serviceBodyId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceBodyId** | **integer** | ID of service body | [default to null]
 **serviceBodyUpdate** | [**ServiceBodyUpdate**](ServiceBodyUpdate.md) | Pass in service body object |

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateUser

Update single user

Updates a user.

### Example

```bash
bmlt-cli updateUser userId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **integer** | ID of user | [default to null]
 **userUpdate** | [**UserUpdate**](UserUpdate.md) | Pass in user object |

### Return type

(empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

