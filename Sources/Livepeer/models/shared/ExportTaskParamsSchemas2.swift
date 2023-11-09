// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// Parameters for the export task
    public struct ExportTaskParamsSchemas2 {
        public let ipfs: Shared.IpfsExportParams1

        /// Creates an object with the specified parameters
        ///
        ///
        public init(ipfs: Shared.IpfsExportParams1) {
            self.ipfs = ipfs
        }
    }
}

extension Shared.ExportTaskParamsSchemas2: Codable {
    enum CodingKeys: String, CodingKey {
        case ipfs
    }
}

