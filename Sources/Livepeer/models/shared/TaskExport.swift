// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// Output of the export task
    public struct TaskExport {
        public let ipfs: Shared.TaskIpfsInput?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(ipfs: Shared.TaskIpfsInput? = nil) {
            self.ipfs = ipfs
        }
    }
}

extension Shared.TaskExport: Codable {
    enum CodingKeys: String, CodingKey {
        case ipfs
    }
}

