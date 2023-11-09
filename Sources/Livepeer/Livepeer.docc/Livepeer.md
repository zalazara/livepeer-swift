# ``Livepeer``

Livepeer API Reference: Welcome to the Livepeer API reference docs. Here you will find all the
endpoints exposed on the standard Livepeer API, learn how to use them and
what they return.


`Livepeer` is a Swift library which provides functionality for making requests to the API using a modern, easy-to-use Swift API:


## [object Object]

```swift
import Foundation
import Livepeer

let client = Client(security: .apiKey(""))

let response = try await client.stream.getAll(
    request: Operations.GetAllRequest(
        streamsonly: "string"
    )
)

switch response.data {
case .classes(let classes):
    // Handle response
    break
case .empty:
    // Handle empty response
    break
}

```

### Getting started
- ``LivepeerAPI`` defines the available API operations, including operations which are logically grouped by name (for example under ``LivepeerAPI/stream``).
- ``Client`` is the main object used when making requests to the API, and implements ``LivepeerAPI`` to provide this functionality.  Each available API method is exposed as an `async` function, which you can call and `await` its response and handle any errors that are thrown.
- API methods that require input data take a *request object* describing these parameters, and each method returns a *response object* containing information about the response. You can read more about these in <doc:Client#Request-and-response-objects>.
- Requests to the API must be authenticated. You can provide authentication credentials by initializing ``Client`` with a ``Shared/Security`` value.
- If an error occurs when making a request to the API, a ``LivepeerError`` error is thrown with more information about what went wrong.

## Topics

### Connecting to the API

- ``Client``
- ``Shared/Security``
- ``Response``
- ``ResponseWithHeaders``
- ``ResponseFields``
- ``ResponseHeaders``
- ``LivepeerError``

### API operations

- ``Livepeer/LivepeerAPI``
- ``StreamAPI``
- ``MultistreamTargetAPI``
- ``WebhookAPI``
- ``AssetAPI``
- ``RoomAPI``
- ``MetricsAPI``
- ``SessionAPI``
- ``AccessControlAPI``
- ``TaskAPI``
- ``TranscodeAPI``
- ``PlaybackAPI``

### Server configuration

### Shared models
- ``Shared/One``
- ``Shared/Two``
- ``Shared/Three``
- ``Shared/Asset``
- ``Shared/Asset1``
- ``Shared/AssetIpfs``
- ``Shared/AssetNftMetadata``
- ``Shared/AssetNftMetadataTemplate``
- ``Shared/AssetPhase``
- ``Shared/AssetSchemasSource3Type``
- ``Shared/AssetSchemasSourceType``
- ``Shared/AssetSchemasType``
- ``Shared/AssetSchemasVideoSpecType``
- ``Shared/AssetSpec``
- ``Shared/AssetStatus``
- ``Shared/AssetStorage``
- ``Shared/AssetType``
- ``Shared/AssetPatchPayload``
- ``Shared/Attestation``
- ``Shared/AttestationIpfs``
- ``Shared/AttestationStorage``
- ``Shared/Attestations``
- ``Shared/CatalystPipelineStrategy``
- ``Shared/CatalystPipelineStrategy``
- ``Shared/Clip``
- ``Shared/Clip``
- ``Shared/ClipPayload``
- ``Shared/ClipStrategy``
- ``Shared/ClipStrategy``
- ``Shared/Content``
- ``Shared/Content``
- ``Shared/CreateRoomResponse``
- ``Shared/CreatorId``
- ``Shared/CreatorId1``
- ``Shared/CreatorIdType``
- ``Shared/Custom``
- ``Shared/Custom``
- ``Shared/Domain``
- ``Shared/Encoder``
- ``Shared/Encryption``
- ``Shared/EncryptionOutput``
- ``Shared/Error``
- ``Shared/Events``
- ``Shared/Export``
- ``Shared/ExportTaskParams``
- ``Shared/ExportTaskParams2``
- ``Shared/ExportTaskParamsSchemas1``
- ``Shared/ExportTaskParamsSchemas1``
- ``Shared/ExportTaskParamsSchemas2``
- ``Shared/ExportTaskParams1``
- ``Shared/ExportData``
- ``Shared/FfmpegProfile``
- ``Shared/GetRoomUserResponse``
- ``Shared/Hash``
- ``Shared/Hls``
- ``Shared/Hls``
- ``Shared/Hrn``
- ``Shared/Input``
- ``Shared/Input``
- ``Shared/InputCreatorId``
- ``Shared/Ipfs``
- ``Shared/IpfsExportParams``
- ``Shared/IpfsExportParams1Output``
- ``Shared/IpfsExportParams2``
- ``Shared/IpfsExportParams2Output``
- ``Shared/IpfsExportParamsPinata``
- ``Shared/IpfsExportParamsSchemas1``
- ``Shared/IpfsExportParams1``
- ``Shared/IpfsFileInfo``
- ``Shared/LastFailure``
- ``Shared/Message``
- ``Shared/Meta``
- ``Shared/Mp4``
- ``Shared/Mp4``
- ``Shared/Multistream``
- ``Shared/MultistreamSpec``
- ``Shared/MultistreamTarget``
- ``Shared/MultistreamTargetInput``
- ``Shared/MultistreamTargetPatchPayload``
- ``Shared/Name``
- ``Shared/NewAssetPayload``
- ``Shared/NewAssetPayload1``
- ``Shared/NewAssetPayloadEncryption``
- ``Shared/NewAssetPayloadIpfs``
- ``Shared/NewAssetPayloadStorage``
- ``Shared/NewStreamPayload``
- ``Shared/NftMetadata``
- ``Shared/NftMetadataTemplate``
- ``Shared/Output``
- ``Shared/Outputs``
- ``Shared/Outputs``
- ``Shared/Params``
- ``Shared/Participants``
- ``Shared/Phase``
- ``Shared/Pinata``
- ``Shared/PlaybackInfo``
- ``Shared/PlaybackInfoSchemasType``
- ``Shared/PlaybackInfoSource``
- ``Shared/PlaybackInfoType``
- ``Shared/PlaybackPolicy``
- ``Shared/PrimaryType``
- ``Shared/Profile``
- ``Shared/RecordingStatus``
- ``Shared/Room``
- ``Shared/RoomEgressPayload``
- ``Shared/RoomUserPayload``
- ``Shared/RoomUserResponse``
- ``Shared/RoomUserUpdatePayload``
- ``Shared/Session``
- ``Shared/SignatureType``
- ``Shared/SigningKey``
- ``Shared/SigningKeyResponsePayload``
- ``Shared/Source``
- ``Shared/Spec``
- ``Shared/SpecNftMetadata``
- ``Shared/SpecNftMetadataTemplate``
- ``Shared/Status``
- ``Shared/Storage``
- ``Shared/StorageStatus``
- ``Shared/Stream``
- ``Shared/StreamMultistream``
- ``Shared/StreamTargets``
- ``Shared/StreamPatchPayload``
- ``Shared/Targets``
- ``Shared/Task``
- ``Shared/TaskExport``
- ``Shared/TaskExportData``
- ``Shared/TaskInput``
- ``Shared/TaskIpfs``
- ``Shared/TaskIpfsInput``
- ``Shared/TaskOutput``
- ``Shared/TaskParams``
- ``Shared/TaskPhase``
- ``Shared/TaskSchemasExportData``
- ``Shared/TaskSchemasExportData``
- ``Shared/TaskSchemasIpfs``
- ``Shared/TaskSchemasIpfs``
- ``Shared/TaskStatus``
- ``Shared/TaskStorage``
- ``Shared/TaskStorage``
- ``Shared/TaskTranscode``
- ``Shared/TaskTranscode``
- ``Shared/TaskType``
- ``Shared/TaskType``
- ``Shared/TaskUpload``
- ``Shared/TaskUploadOutput``
- ``Shared/Tasks``
- ``Shared/Tracks``
- ``Shared/Transcode``
- ``Shared/Transcode``
- ``Shared/TranscodeFile``
- ``Shared/TranscodeFile``
- ``Shared/TypeModel``
- ``Shared/Upload``
- ``Shared/UploadOutput``
- ``Shared/UsageMetric``
- ``Shared/Version``
- ``Shared/VideoSpec``
- ``Shared/ViewershipMetric``
- ``Shared/Webhook``

### Request objects

### Response objects
- ``Operations/CreateResponse``
- ``Operations/CreateClipResponse``
- ``Operations/CreateMultistreamTargetResponse``
- ``Operations/CreateRoomResponse``
- ``Operations/CreateRoomUserResponse``
- ``Operations/CreateSigningKeyResponse``
- ``Operations/CreateWebhookResponse``
- ``Operations/DeleteResponse``
- ``Operations/DeleteAssetResponse``
- ``Operations/DeleteMultistreamTargetResponse``
- ``Operations/DeleteRoomResponse``
- ``Operations/DeleteRoomUserResponse``
- ``Operations/DeleteSigningKeyResponse``
- ``Operations/DeleteWebhookResponse``
- ``Operations/GetResponse``
- ``Operations/GetAllResponse``
- ``Operations/GetAllClipsResponse``
- ``Operations/GetAssetResponse``
- ``Operations/GetAssetsResponse``
- ``Operations/GetCreatorMetricsResponse``
- ``Operations/GetMultistreamTargetResponse``
- ``Operations/GetMultistreamTargetsResponse``
- ``Operations/GetPlaybackInfoResponse``
- ``Operations/GetPublicTotalViewsMetricsResponse``
- ``Operations/GetRecordedSessionsResponse``
- ``Operations/GetRoomResponse``
- ``Operations/GetRoomUserDetailsResponse``
- ``Operations/GetSessionResponse``
- ``Operations/GetSessionsResponse``
- ``Operations/GetSigningKeyResponse``
- ``Operations/GetSigningKeysResponse``
- ``Operations/GetTaskResponse``
- ``Operations/GetTasksResponse``
- ``Operations/GetUsageMetricsResponse``
- ``Operations/GetViewershipsMetricsResponse``
- ``Operations/GetWebhookResponse``
- ``Operations/GetWebhooksResponse``
- ``Operations/PatchAssetAssetIdResponse``
- ``Operations/RequestUploadResponse``
- ``Operations/StartRoomEgressResponse``
- ``Operations/StopRoomEgressResponse``
- ``Operations/TranscodeResponse``
- ``Operations/UpdateResponse``
- ``Operations/UpdateMultistreamTargetResponse``
- ``Operations/UpdateRoomUserDetailsResponse``
- ``Operations/UpdateSigningKeyResponse``
- ``Operations/UpdateWebhookResponse``
- ``Operations/UploadAssetViaURLResponse``

### Other models
- ``Operations/BreakdownBy``
- ``Operations/CreateClipResponseBody``
- ``Operations/CreateClipTask``
- ``Operations/CreateRoomUserRequest``
- ``Operations/DeleteRequest``
- ``Operations/DeleteAssetRequest``
- ``Operations/DeleteMultistreamTargetRequest``
- ``Operations/DeleteRoomRequest``
- ``Operations/DeleteRoomUserRequest``
- ``Operations/DeleteSigningKeyRequest``
- ``Operations/DeleteWebhookRequest``
- ``Operations/From``
- ``Operations/GetRequest``
- ``Operations/GetAllRequest``
- ``Operations/GetAllClipsRequest``
- ``Operations/GetAssetRequest``
- ``Operations/GetCreatorMetricsRequest``
- ``Operations/GetMultistreamTargetRequest``
- ``Operations/GetPlaybackInfoRequest``
- ``Operations/GetPublicTotalViewsMetricsRequest``
- ``Operations/GetPublicTotalViewsMetricsResponseBody``
- ``Operations/GetRecordedSessionsRequest``
- ``Operations/GetRoomRequest``
- ``Operations/GetRoomUserDetailsRequest``
- ``Operations/GetSessionRequest``
- ``Operations/GetSigningKeyRequest``
- ``Operations/GetTaskRequest``
- ``Operations/GetUsageMetricsQueryParamTimeStep``
- ``Operations/GetUsageMetricsRequest``
- ``Operations/GetViewershipsMetricsRequest``
- ``Operations/GetWebhookRequest``
- ``Operations/PatchAssetAssetIdRequest``
- ``Operations/QueryParamBreakdownBy``
- ``Operations/QueryParamFrom``
- ``Operations/QueryParamTimeStep``
- ``Operations/QueryParamTo``
- ``Operations/RequestUploadResponseBody``
- ``Operations/StartRoomEgressRequest``
- ``Operations/StopRoomEgressRequest``
- ``Operations/Task``
- ``Operations/TimeStep``
- ``Operations/To``
- ``Operations/UpdateRequest``
- ``Operations/UpdateMultistreamTargetRequest``
- ``Operations/UpdateRoomUserDetailsRequest``
- ``Operations/UpdateSigningKeyRequest``
- ``Operations/UpdateSigningKeyRequestBody``
- ``Operations/UpdateWebhookRequest``
- ``Operations/UploadAssetViaURLResponseBody``
- ``Operations/UploadAssetViaURLTask``

### Type groupings
- ``Operations``
- ``Shared``

### Data types

- ``AnyValue``
- ``APIValue``

### Internal data types

- ``DateConvertible``
- ``DateOnly``
- ``DateTime``
- ``DecimalSerialized``
- ``DoubleConvertible``
