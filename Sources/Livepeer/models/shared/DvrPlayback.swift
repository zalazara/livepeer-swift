// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct DvrPlayback {
        public let error: String?
        public let hrn: Shared.PlaybackInfoHrn?
        public let type: Shared.PlaybackInfoSchemasMetaType?
        public let url: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(error: String? = nil, hrn: Shared.PlaybackInfoHrn? = nil, type: Shared.PlaybackInfoSchemasMetaType? = nil, url: String? = nil) {
            self.error = error
            self.hrn = hrn
            self.type = type
            self.url = url
        }
    }
}

extension Shared.DvrPlayback: Codable {
    enum CodingKeys: String, CodingKey {
        case error
        case hrn
        case type
        case url
    }
}
