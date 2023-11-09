// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct Meta {
        public let source: [Shared.PlaybackInfoSource]
        public let attestation: Shared.Attestation?
        @DecimalSerialized
        public private(set) var live: Double?
        /// Whether the playback policy for a asset or stream is public or signed
        public let playbackPolicy: Shared.PlaybackPolicy?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter playbackPolicy: Whether the playback policy for a asset or stream is public or signed
        ///
        public init(source: [Shared.PlaybackInfoSource], attestation: Shared.Attestation? = nil, live: Double? = nil, playbackPolicy: Shared.PlaybackPolicy? = nil) {
            self.source = source
            self.attestation = attestation
            self._live = DecimalSerialized<Double?>(wrappedValue: live)
            self.playbackPolicy = playbackPolicy
        }
    }
}

extension Shared.Meta: Codable {
    enum CodingKeys: String, CodingKey {
        case source
        case attestation
        case live
        case playbackPolicy
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.source = try container.decode([Shared.PlaybackInfoSource].self, forKey: .source)
        self.attestation = try container.decodeIfPresent(Shared.Attestation.self, forKey: .attestation)
        self._live = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .live) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.playbackPolicy = try container.decodeIfPresent(Shared.PlaybackPolicy.self, forKey: .playbackPolicy)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.source, forKey: .source)
        try container.encodeIfPresent(self.attestation, forKey: .attestation)
        if self.live != nil {
            try container.encode(self._live, forKey: .live)
        }
        try container.encodeIfPresent(self.playbackPolicy, forKey: .playbackPolicy)
    }
}

extension Shared.Meta {
    var liveWrapper: DecimalSerialized<Double?> {
        return _live
    }
}