# DefaultAPI

All URIs are relative to *https://dev-api.server.test/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersGet**](DefaultAPI.md#usersget) | **GET** /users | ユーザーの一覧取得
[**usersUserIdGet**](DefaultAPI.md#usersuseridget) | **GET** /users/{userId} | 特定のユーザー情報を取得
[**usersUserIdPut**](DefaultAPI.md#usersuseridput) | **PUT** /users/{userId} | 特定のユーザー情報を更新


# **usersGet**
```swift
    open class func usersGet(completion: @escaping (_ data: [UsersGet200ResponseInner]?, _ error: Error?) -> Void)
```

ユーザーの一覧取得

ユーザーの一覧を返します

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// ユーザーの一覧取得
DefaultAPI.usersGet() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[UsersGet200ResponseInner]**](UsersGet200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUserIdGet**
```swift
    open class func usersUserIdGet(userId: Int, completion: @escaping (_ data: UsersUserIdGet200Response?, _ error: Error?) -> Void)
```

特定のユーザー情報を取得

ユーザーIDをもとにユーザー情報を取得します

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // Int | 

// 特定のユーザー情報を取得
DefaultAPI.usersUserIdGet(userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Int** |  | 

### Return type

[**UsersUserIdGet200Response**](UsersUserIdGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUserIdPut**
```swift
    open class func usersUserIdPut(userId: Int, usersUserIdPutRequest: UsersUserIdPutRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

特定のユーザー情報を更新

ユーザー情報を更新します

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // Int | 
let usersUserIdPutRequest = _users__userId__put_request(name: "name_example", email: "email_example") // UsersUserIdPutRequest | 更新するユーザー情報

// 特定のユーザー情報を更新
DefaultAPI.usersUserIdPut(userId: userId, usersUserIdPutRequest: usersUserIdPutRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Int** |  | 
 **usersUserIdPutRequest** | [**UsersUserIdPutRequest**](UsersUserIdPutRequest.md) | 更新するユーザー情報 | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

