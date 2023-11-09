// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetPublicTotalViewsMetricsRequest: APIValue {
        /// The playback ID to filter the query results. This can be a canonical
        /// playback ID from Livepeer assets or streams, or dStorage identifiers
        /// for assets
        /// 
        public let playbackId: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter playbackId: The playback ID to filter the query results. This can be a canonical
        /// playback ID from Livepeer assets or streams, or dStorage identifiers
        /// for assets
        /// 
        ///
        public init(playbackId: String) {
            self.playbackId = playbackId
        }
    }
}