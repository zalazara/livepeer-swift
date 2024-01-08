# ``Livepeer``

Livepeer API Reference: Welcome to the Livepeer API reference docs. Here you will find all the
endpoints exposed on the standard Livepeer API, learn how to use them and
what they return.


`Livepeer` is a Swift library which provides functionality for making requests to the API using a modern, easy-to-use Swift API:

### SDK Example Usage

```swift
import Foundation
import Livepeer

let client = Client(security: .apiKey(""))

let response = try await client.getStream(
    request: Operations.GetStreamRequest(
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
- ``LivepeerAPI`` defines the available API operations.
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
- ``Shared/Clip``
- ``Shared/ClipPayload``
- ``Shared/ClipStrategy``
- ``Shared/Content``
- ``Shared/CreateRoomResponse``
- ``Shared/CreatorId``
- ``Shared/CreatorId1``
- ``Shared/CreatorIdType``
- ``Shared/Credentials``
- ``Shared/Custom``
- ``Shared/Domain``
- ``Shared/DvrPlayback``
- ``Shared/Encoder``
- ``Shared/Encryption``
- ``Shared/Error``
- ``Shared/Events``
- ``Shared/Export``
- ``Shared/ExportTaskParams``
- ``Shared/ExportTaskParams1``
- ``Shared/ExportTaskParams2``
- ``Shared/ExportData``
- ``Shared/FfmpegProfile``
- ``Shared/Fmp4``
- ``Shared/GetRoomUserResponse``
- ``Shared/Hash``
- ``Shared/Hls``
- ``Shared/Hrn``
- ``Shared/Input``
- ``Shared/InputCreatorId``
- ``Shared/Ipfs``
- ``Shared/IpfsExportParams``
- ``Shared/IpfsExportParams1``
- ``Shared/IpfsExportParams2``
- ``Shared/IpfsFileInfo``
- ``Shared/LastFailure``
- ``Shared/Message``
- ``Shared/Meta``
- ``Shared/Mp4``
- ``Shared/Multistream``
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
- ``Shared/Params``
- ``Shared/Participants``
- ``Shared/Phase``
- ``Shared/Pinata``
- ``Shared/PlaybackInfo``
- ``Shared/PlaybackInfoHrn``
- ``Shared/PlaybackInfoSchemasMetaType``
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
- ``Shared/Source``
- ``Shared/Spec``
- ``Shared/Status``
- ``Shared/Storage``
- ``Shared/StorageStatus``
- ``Shared/Stream``
- ``Shared/StreamMultistream``
- ``Shared/StreamPatchPayload``
- ``Shared/Target``
- ``Shared/TargetOutput``
- ``Shared/TargetSpec``
- ``Shared/TargetAddPayload``
- ``Shared/TargetAddPayloadSpec``
- ``Shared/Task``
- ``Shared/TaskExportData``
- ``Shared/TaskHls``
- ``Shared/TaskInput``
- ``Shared/TaskIpfs``
- ``Shared/TaskMp4``
- ``Shared/TaskOutputs``
- ``Shared/TaskPhase``
- ``Shared/TaskSchemasIpfs``
- ``Shared/TaskStatus``
- ``Shared/TaskStorage``
- ``Shared/TaskType``
- ``Shared/Tasks``
- ``Shared/Tracks``
- ``Shared/TranscodeFile``
- ``Shared/TranscodePayload``
- ``Shared/TranscodePayload1``
- ``Shared/TranscodePayload2``
- ``Shared/TranscodePayloadCredentials``
- ``Shared/TranscodePayloadSchemas1``
- ``Shared/TranscodePayloadSchemas2``
- ``Shared/TranscodePayloadSchemasCredentials``
- ``Shared/TranscodePayloadSchemasStorageType``
- ``Shared/TranscodePayloadSchemasType``
- ``Shared/TranscodePayloadStorage``
- ``Shared/TranscodePayloadType``
- ``Shared/TranscodeProfile``
- ``Shared/TranscodeProfileEncoder``
- ``Shared/TranscodeProfileProfile``
- ``Shared/TypeModel``
- ``Shared/Upload``
- ``Shared/UsageMetric``
- ``Shared/Version``
- ``Shared/VideoSpec``
- ``Shared/ViewershipMetric``
- ``Shared/Webhook``

### Request objects

### Response objects
- ``Operations/DeleteAccessControlSigningKeyKeyIdResponse``
- ``Operations/DeleteAssetAssetIdResponse``
- ``Operations/DeleteMultistreamTargetIdResponse``
- ``Operations/DeleteRoomIdResponse``
- ``Operations/DeleteRoomIdEgressResponse``
- ``Operations/DeleteRoomIdUserUserIdResponse``
- ``Operations/DeleteStreamIdResponse``
- ``Operations/DeleteStreamIdMultistreamTargetIdResponse``
- ``Operations/DeleteStreamIdTerminateResponse``
- ``Operations/DeleteWebhookIdResponse``
- ``Operations/GetAccessControlSigningKeyResponse``
- ``Operations/GetAccessControlSigningKeyKeyIdResponse``
- ``Operations/GetAssetResponse``
- ``Operations/GetAssetAssetIdResponse``
- ``Operations/GetDataUsageQueryResponse``
- ``Operations/GetDataViewsQueryResponse``
- ``Operations/GetDataViewsQueryCreatorResponse``
- ``Operations/GetDataViewsQueryTotalPlaybackIdResponse``
- ``Operations/GetMultistreamTargetResponse``
- ``Operations/GetMultistreamTargetIdResponse``
- ``Operations/GetPlaybackIdResponse``
- ``Operations/GetRoomIdResponse``
- ``Operations/GetRoomIdUserUserIdResponse``
- ``Operations/GetSessionResponse``
- ``Operations/GetSessionIdResponse``
- ``Operations/GetSessionIdClipsResponse``
- ``Operations/GetStreamResponse``
- ``Operations/GetStreamIdResponse``
- ``Operations/GetStreamIdClipsResponse``
- ``Operations/GetStreamParentIdSessionsResponse``
- ``Operations/GetTaskResponse``
- ``Operations/GetTaskTaskIdResponse``
- ``Operations/GetWebhookResponse``
- ``Operations/GetWebhookIdResponse``
- ``Operations/PatchAccessControlSigningKeyKeyIdResponse``
- ``Operations/PatchAssetAssetIdResponse``
- ``Operations/PatchMultistreamTargetIdResponse``
- ``Operations/PatchStreamIdResponse``
- ``Operations/PostAccessControlSigningKeyResponse``
- ``Operations/PostAssetRequestUploadResponse``
- ``Operations/PostAssetUploadUrlResponse``
- ``Operations/PostClipResponse``
- ``Operations/PostMultistreamTargetResponse``
- ``Operations/PostRoomResponse``
- ``Operations/PostRoomIdEgressResponse``
- ``Operations/PostRoomIdUserResponse``
- ``Operations/PostStreamResponse``
- ``Operations/PostStreamIdCreateMultistreamTargetResponse``
- ``Operations/PostTranscodeResponse``
- ``Operations/PostWebhookResponse``
- ``Operations/PutRoomIdUserUserIdResponse``
- ``Operations/PutWebhookIdResponse``

### Other models
- ``Operations/BreakdownBy``
- ``Operations/DeleteAccessControlSigningKeyKeyIdRequest``
- ``Operations/DeleteAssetAssetIdRequest``
- ``Operations/DeleteMultistreamTargetIdRequest``
- ``Operations/DeleteRoomIdRequest``
- ``Operations/DeleteRoomIdEgressRequest``
- ``Operations/DeleteRoomIdUserUserIdRequest``
- ``Operations/DeleteStreamIdRequest``
- ``Operations/DeleteStreamIdMultistreamTargetIdRequest``
- ``Operations/DeleteStreamIdTerminateRequest``
- ``Operations/DeleteWebhookIdRequest``
- ``Operations/From``
- ``Operations/GetAccessControlSigningKeyKeyIdRequest``
- ``Operations/GetAssetAssetIdRequest``
- ``Operations/GetDataUsageQueryQueryParamTimeStep``
- ``Operations/GetDataUsageQueryRequest``
- ``Operations/GetDataViewsQueryRequest``
- ``Operations/GetDataViewsQueryCreatorRequest``
- ``Operations/GetDataViewsQueryTotalPlaybackIdRequest``
- ``Operations/GetDataViewsQueryTotalPlaybackIdResponseBody``
- ``Operations/GetMultistreamTargetIdRequest``
- ``Operations/GetPlaybackIdRequest``
- ``Operations/GetRoomIdRequest``
- ``Operations/GetRoomIdUserUserIdRequest``
- ``Operations/GetSessionIdRequest``
- ``Operations/GetSessionIdClipsRequest``
- ``Operations/GetStreamRequest``
- ``Operations/GetStreamIdRequest``
- ``Operations/GetStreamIdClipsRequest``
- ``Operations/GetStreamParentIdSessionsRequest``
- ``Operations/GetTaskTaskIdRequest``
- ``Operations/GetWebhookIdRequest``
- ``Operations/PatchAccessControlSigningKeyKeyIdRequest``
- ``Operations/PatchAccessControlSigningKeyKeyIdRequestBody``
- ``Operations/PatchAssetAssetIdRequest``
- ``Operations/PatchMultistreamTargetIdRequest``
- ``Operations/PatchStreamIdRequest``
- ``Operations/PostAssetRequestUploadResponseBody``
- ``Operations/PostAssetUploadUrlResponseBody``
- ``Operations/PostAssetUploadUrlTask``
- ``Operations/PostClipResponseBody``
- ``Operations/PostClipTask``
- ``Operations/PostRoomIdEgressRequest``
- ``Operations/PostRoomIdUserRequest``
- ``Operations/PostStreamIdCreateMultistreamTargetRequest``
- ``Operations/PutRoomIdUserUserIdRequest``
- ``Operations/PutWebhookIdRequest``
- ``Operations/QueryParamBreakdownBy``
- ``Operations/QueryParamFrom``
- ``Operations/QueryParamTimeStep``
- ``Operations/QueryParamTo``
- ``Operations/Task``
- ``Operations/TimeStep``
- ``Operations/To``

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
