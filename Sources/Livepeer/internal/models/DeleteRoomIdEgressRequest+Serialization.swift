// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.DeleteRoomIdEgressRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .path:
            return try serializePathParameterSerializable(self, with: format)
        case .query, .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.DeleteRoomIdEgressRequest", format: format.formatDescription)
        }
    }
}

extension Operations.DeleteRoomIdEgressRequest: PathParameterSerializable {
    func serializedPathParameters(formatOverride: SerializableFormat?) throws -> [String: String] {
        return [
            "id": try id.serialize(with: formatOverride ?? .path(explode: false)),
        ].compactMapValues { $0 }
    }
}