// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct StreamPatchPayload {
        public let creatorId: Shared.InputCreatorId?
        public let multistream: Shared.Multistream?
        /// Whether the playback policy for a asset or stream is public or signed
        public let playbackPolicy: Shared.PlaybackPolicy?
        public let profiles: [Shared.FfmpegProfile]?
        /// Should this stream be recorded? Uses default settings. For more
        /// customization, create and configure an object store.
        /// 
        public let record: Bool?
        /// If currently suspended
        public let suspended: Bool?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter playbackPolicy: Whether the playback policy for a asset or stream is public or signed
        /// - Parameter record: Should this stream be recorded? Uses default settings. For more
        /// customization, create and configure an object store.
        /// 
        /// - Parameter suspended: If currently suspended
        ///
        public init(creatorId: Shared.InputCreatorId? = nil, multistream: Shared.Multistream? = nil, playbackPolicy: Shared.PlaybackPolicy? = nil, profiles: [Shared.FfmpegProfile]? = nil, record: Bool? = nil, suspended: Bool? = nil) {
            self.creatorId = creatorId
            self.multistream = multistream
            self.playbackPolicy = playbackPolicy
            self.profiles = profiles
            self.record = record
            self.suspended = suspended
        }
    }
}

extension Shared.StreamPatchPayload: Codable {
    enum CodingKeys: String, CodingKey {
        case creatorId
        case multistream
        case playbackPolicy
        case profiles
        case record
        case suspended
    }
}

