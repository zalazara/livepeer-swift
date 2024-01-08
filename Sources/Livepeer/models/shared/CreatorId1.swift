// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct CreatorId1 {
        public let type: Shared.CreatorIdType
        /// Developer-managed ID of the user who created the resource.
        public let value: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter value: Developer-managed ID of the user who created the resource.
        ///
        public init(type: Shared.CreatorIdType, value: String) {
            self.type = type
            self.value = value
        }
    }
}

extension Shared.CreatorId1: Codable {
    enum CodingKeys: String, CodingKey {
        case type
        case value
    }
}

