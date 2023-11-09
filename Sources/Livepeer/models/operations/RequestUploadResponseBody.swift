// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Success
    public struct RequestUploadResponseBody {
        public let asset: Shared.Asset
        public let task: Operations.Task
        public let tusEndpoint: String
        public let url: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(asset: Shared.Asset, task: Operations.Task, tusEndpoint: String, url: String) {
            self.asset = asset
            self.task = task
            self.tusEndpoint = tusEndpoint
            self.url = url
        }
    }
}

extension Operations.RequestUploadResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case asset
        case task
        case tusEndpoint
        case url
    }
}

