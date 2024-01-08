// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetRoomIdUserUserIdRequest: APIValue {
        public let id: String
        public let userId: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(id: String, userId: String) {
            self.id = id
            self.userId = userId
        }
    }
}