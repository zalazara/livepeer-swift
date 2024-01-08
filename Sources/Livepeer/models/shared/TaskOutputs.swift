// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// Output formats
    public struct TaskOutputs {
        /// HLS output format
        public let hls: Shared.TaskHls?
        /// MP4 output format
        public let mp4: Shared.TaskMp4?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter hls: HLS output format
        /// - Parameter mp4: MP4 output format
        ///
        public init(hls: Shared.TaskHls? = nil, mp4: Shared.TaskMp4? = nil) {
            self.hls = hls
            self.mp4 = mp4
        }
    }
}

extension Shared.TaskOutputs: Codable {
    enum CodingKeys: String, CodingKey {
        case hls
        case mp4
    }
}

