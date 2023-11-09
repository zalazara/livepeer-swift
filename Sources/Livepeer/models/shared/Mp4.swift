// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// MP4 output format
    public struct Mp4 {
        /// Path for the MP4 output
        public let path: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter path: Path for the MP4 output
        ///
        public init(path: String? = nil) {
            self.path = path
        }
    }
}

extension Shared.Mp4: Codable {
    enum CodingKeys: String, CodingKey {
        case path
    }
}

