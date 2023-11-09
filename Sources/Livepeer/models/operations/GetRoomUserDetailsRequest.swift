// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetRoomUserDetailsRequest: APIValue {
        /// ID of the room
        public let id: String
        /// ID of the user
        public let userId: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter id: ID of the room
        /// - Parameter userId: ID of the user
        ///
        public init(id: String, userId: String) {
            self.id = id
            self.userId = userId
        }
    }
}
