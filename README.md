# BMLT Bash client

## Overview

This is a Bash client script for accessing BMLT service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x bmlt-cli

# Print the list of operations available on the service
$ ./bmlt-cli -h

# Print the service description
$ ./bmlt-cli --about

# Print detailed information about specific operation
$ ./bmlt-cli <operationId> -h

# Make GET request
./bmlt-cli --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
bmlt-cli -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' | bmlt-cli --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' | bmlt-cli --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$ bmlt-cli --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$ bmlt-cli --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source bmlt-cli.bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp bmlt-cli.bash-completion /etc/bash-completion.d/bmlt-cli
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_bmlt-cli` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to */main_server*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*RootServerApi* | [**authLogout**](docs/RootServerApi.md#authlogout) | **POST** /api/v1/auth/logout | Revokes a token
*RootServerApi* | [**authRefresh**](docs/RootServerApi.md#authrefresh) | **POST** /api/v1/auth/refresh | Revokes and issues a new token
*RootServerApi* | [**authToken**](docs/RootServerApi.md#authtoken) | **POST** /api/v1/auth/token | Creates a token
*RootServerApi* | [**createErrorTest**](docs/RootServerApi.md#createerrortest) | **POST** /api/v1/errortest | Tests some errors
*RootServerApi* | [**createFormat**](docs/RootServerApi.md#createformat) | **POST** /api/v1/formats | Creates a format
*RootServerApi* | [**createMeeting**](docs/RootServerApi.md#createmeeting) | **POST** /api/v1/meetings | Creates a meeting
*RootServerApi* | [**createServiceBody**](docs/RootServerApi.md#createservicebody) | **POST** /api/v1/servicebodies | Creates a service body
*RootServerApi* | [**createUser**](docs/RootServerApi.md#createuser) | **POST** /api/v1/users | Creates a user
*RootServerApi* | [**deleteFormat**](docs/RootServerApi.md#deleteformat) | **DELETE** /api/v1/formats/{formatId} | Deletes a format
*RootServerApi* | [**deleteMeeting**](docs/RootServerApi.md#deletemeeting) | **DELETE** /api/v1/meetings/{meetingId} | Deletes a meeting
*RootServerApi* | [**deleteServiceBody**](docs/RootServerApi.md#deleteservicebody) | **DELETE** /api/v1/servicebodies/{serviceBodyId} | Deletes a service body
*RootServerApi* | [**deleteUser**](docs/RootServerApi.md#deleteuser) | **DELETE** /api/v1/users/{userId} | Deletes a user
*RootServerApi* | [**getFormat**](docs/RootServerApi.md#getformat) | **GET** /api/v1/formats/{formatId} | Retrieves a format
*RootServerApi* | [**getFormats**](docs/RootServerApi.md#getformats) | **GET** /api/v1/formats | Retrieves formats
*RootServerApi* | [**getLaravelLog**](docs/RootServerApi.md#getlaravellog) | **GET** /api/v1/logs/laravel | Retrieves laravel log
*RootServerApi* | [**getMeeting**](docs/RootServerApi.md#getmeeting) | **GET** /api/v1/meetings/{meetingId} | Retrieves a meeting
*RootServerApi* | [**getMeetingChanges**](docs/RootServerApi.md#getmeetingchanges) | **GET** /api/v1/meetings/{meetingId}/changes | Retrieve changes for a meeting
*RootServerApi* | [**getMeetings**](docs/RootServerApi.md#getmeetings) | **GET** /api/v1/meetings | Retrieves meetings
*RootServerApi* | [**getRootServer**](docs/RootServerApi.md#getrootserver) | **GET** /api/v1/rootservers/{rootServerId} | Retrieves a root server
*RootServerApi* | [**getRootServers**](docs/RootServerApi.md#getrootservers) | **GET** /api/v1/rootservers | Retrieves root servers
*RootServerApi* | [**getServiceBodies**](docs/RootServerApi.md#getservicebodies) | **GET** /api/v1/servicebodies | Retrieves service bodies
*RootServerApi* | [**getServiceBody**](docs/RootServerApi.md#getservicebody) | **GET** /api/v1/servicebodies/{serviceBodyId} | Retrieves a service body
*RootServerApi* | [**getUser**](docs/RootServerApi.md#getuser) | **GET** /api/v1/users/{userId} | Retrieves a single user
*RootServerApi* | [**getUsers**](docs/RootServerApi.md#getusers) | **GET** /api/v1/users | Retrieves users
*RootServerApi* | [**partialUpdateUser**](docs/RootServerApi.md#partialupdateuser) | **PATCH** /api/v1/users/{userId} | Patches a user
*RootServerApi* | [**patchFormat**](docs/RootServerApi.md#patchformat) | **PATCH** /api/v1/formats/{formatId} | Patches a format
*RootServerApi* | [**patchMeeting**](docs/RootServerApi.md#patchmeeting) | **PATCH** /api/v1/meetings/{meetingId} | Patches a meeting
*RootServerApi* | [**patchServiceBody**](docs/RootServerApi.md#patchservicebody) | **PATCH** /api/v1/servicebodies/{serviceBodyId} | Patches a service body
*RootServerApi* | [**updateFormat**](docs/RootServerApi.md#updateformat) | **PUT** /api/v1/formats/{formatId} | Updates a format
*RootServerApi* | [**updateMeeting**](docs/RootServerApi.md#updatemeeting) | **PUT** /api/v1/meetings/{meetingId} | Updates a meeting
*RootServerApi* | [**updateServiceBody**](docs/RootServerApi.md#updateservicebody) | **PUT** /api/v1/servicebodies/{serviceBodyId} | Updates a Service Body
*RootServerApi* | [**updateUser**](docs/RootServerApi.md#updateuser) | **PUT** /api/v1/users/{userId} | Update single user


## Documentation For Models

 - [AuthenticationError](docs/AuthenticationError.md)
 - [AuthorizationError](docs/AuthorizationError.md)
 - [ConflictError](docs/ConflictError.md)
 - [ErrorTest](docs/ErrorTest.md)
 - [Format](docs/Format.md)
 - [FormatBase](docs/FormatBase.md)
 - [FormatCreate](docs/FormatCreate.md)
 - [FormatPartialUpdate](docs/FormatPartialUpdate.md)
 - [FormatTranslation](docs/FormatTranslation.md)
 - [FormatUpdate](docs/FormatUpdate.md)
 - [Meeting](docs/Meeting.md)
 - [MeetingBase](docs/MeetingBase.md)
 - [MeetingChangeResource](docs/MeetingChangeResource.md)
 - [MeetingCreate](docs/MeetingCreate.md)
 - [MeetingPartialUpdate](docs/MeetingPartialUpdate.md)
 - [MeetingUpdate](docs/MeetingUpdate.md)
 - [NotFoundError](docs/NotFoundError.md)
 - [RootServer](docs/RootServer.md)
 - [RootServerBase](docs/RootServerBase.md)
 - [RootServerBaseStatistics](docs/RootServerBaseStatistics.md)
 - [RootServerBaseStatisticsMeetings](docs/RootServerBaseStatisticsMeetings.md)
 - [RootServerBaseStatisticsServiceBodies](docs/RootServerBaseStatisticsServiceBodies.md)
 - [ServerError](docs/ServerError.md)
 - [ServiceBody](docs/ServiceBody.md)
 - [ServiceBodyBase](docs/ServiceBodyBase.md)
 - [ServiceBodyCreate](docs/ServiceBodyCreate.md)
 - [ServiceBodyPartialUpdate](docs/ServiceBodyPartialUpdate.md)
 - [ServiceBodyUpdate](docs/ServiceBodyUpdate.md)
 - [Token](docs/Token.md)
 - [TokenCredentials](docs/TokenCredentials.md)
 - [User](docs/User.md)
 - [UserBase](docs/UserBase.md)
 - [UserCreate](docs/UserCreate.md)
 - [UserPartialUpdate](docs/UserPartialUpdate.md)
 - [UserUpdate](docs/UserUpdate.md)
 - [ValidationError](docs/ValidationError.md)


## Documentation For Authorization


## bmltToken


- **Type**: OAuth
- **Flow**: password
- **Token URL**: api/v1/auth/token
- **Scopes**: N/A

