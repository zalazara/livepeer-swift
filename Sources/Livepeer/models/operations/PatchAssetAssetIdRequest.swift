// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct PatchAssetAssetIdRequest: APIValue {
        public let assetPatchPayload: Shared.AssetPatchPayload
        /// ID of the asset
        public let assetId: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter assetId: ID of the asset
        ///
        public init(assetPatchPayload: Shared.AssetPatchPayload, assetId: String) {
            self.assetPatchPayload = assetPatchPayload
            self.assetId = assetId
        }
    }
}