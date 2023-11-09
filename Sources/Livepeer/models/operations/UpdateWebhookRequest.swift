// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct UpdateWebhookRequest: APIValue {
        /// ID of the webhook
        public let id: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter id: ID of the webhook
        ///
        public init(id: String) {
            self.id = id
        }
    }
}
