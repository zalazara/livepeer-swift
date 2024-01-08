// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// Delegation proof for Livepeer to be able to upload to
    /// web3.storage
    /// 
    public struct TranscodePayloadSchemasCredentials {
        /// Base64 encoded UCAN delegation proof
        public let proof: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter proof: Base64 encoded UCAN delegation proof
        ///
        public init(proof: String) {
            self.proof = proof
        }
    }
}

extension Shared.TranscodePayloadSchemasCredentials: Codable {
    enum CodingKeys: String, CodingKey {
        case proof
    }
}

