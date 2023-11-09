// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct NewAssetPayloadStorage {
        /// Set to true to make default export to IPFS. To customize the
        /// pinned files, specify an object with a spec field. False or null
        /// means to unpin from IPFS, but it's unsupported right now.
        /// 
        public let ipfs: Shared.NewAssetPayloadIpfs?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter ipfs: Set to true to make default export to IPFS. To customize the
        /// pinned files, specify an object with a spec field. False or null
        /// means to unpin from IPFS, but it's unsupported right now.
        /// 
        ///
        public init(ipfs: Shared.NewAssetPayloadIpfs? = nil) {
            self.ipfs = ipfs
        }
    }
}

extension Shared.NewAssetPayloadStorage: Codable {
    enum CodingKeys: String, CodingKey {
        case ipfs
    }
}

