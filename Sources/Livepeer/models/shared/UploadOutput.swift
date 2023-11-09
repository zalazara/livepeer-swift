// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// Parameters for the upload task
    public struct UploadOutput {
        public let encryption: Shared.EncryptionOutput?
        /// ID of the original recorded session to avoid re-transcoding
        /// of the same content. Only used for import task.
        /// 
        public let recordedSessionId: String?
        /// URL of the asset to "upload"
        public let url: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter recordedSessionId: ID of the original recorded session to avoid re-transcoding
        /// of the same content. Only used for import task.
        /// 
        /// - Parameter url: URL of the asset to "upload"
        ///
        public init(encryption: Shared.EncryptionOutput? = nil, recordedSessionId: String? = nil, url: String? = nil) {
            self.encryption = encryption
            self.recordedSessionId = recordedSessionId
            self.url = url
        }
    }
}

extension Shared.UploadOutput: Codable {
    enum CodingKeys: String, CodingKey {
        case encryption
        case recordedSessionId
        case url
    }
}

