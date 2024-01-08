// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct PostStreamIdCreateMultistreamTargetRequest: APIValue {
        /// ID of the parent stream
        public let id: String
        public let targetAddPayload: Shared.TargetAddPayload

        /// Creates an object with the specified parameters
        ///
        /// - Parameter id: ID of the parent stream
        ///
        public init(id: String, targetAddPayload: Shared.TargetAddPayload) {
            self.id = id
            self.targetAddPayload = targetAddPayload
        }
    }
}
