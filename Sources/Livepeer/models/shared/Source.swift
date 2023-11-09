// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public enum Source {
        case asset1(Shared.Asset1)
        case two(Shared.Two)
        case three(Shared.Three)
    }
}

extension Shared.Source: Codable {
    public init(from decoder: Decoder) throws {
        if let value = try? Shared.Asset1(from: decoder) {
            self = .asset1(value)
        } else if let value = try? Shared.Two(from: decoder) {
            self = .two(value)
        } else if let value = try? Shared.Three(from: decoder) {
            self = .three(value)
        } else {
            throw LivepeerError.failedToHandleResponse(.failedToDecodeResponse)
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .asset1(let value):
            try value.encode(to: encoder)
        case .two(let value):
            try value.encode(to: encoder)
        case .three(let value):
            try value.encode(to: encoder)
        }
    }
}

