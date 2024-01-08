// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum GetTaskResponse {
        case empty
        case classes([Shared.Task])

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func classes() throws -> [Shared.Task] {
            guard case .classes(let value) = self else {
                throw LivepeerError.missingResponseData
            }
            return value
        }
    }
}
