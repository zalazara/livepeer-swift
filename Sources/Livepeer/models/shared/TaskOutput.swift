// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// Output of the task
    public struct TaskOutput {
        /// Output of the export task
        public let export: Shared.TaskExport?
        /// Output of the export data task
        public let exportData: Shared.TaskSchemasExportData?
        /// Output of the upload task
        public let `import`: [String: AnyValue]?
        public let transcode: Shared.TaskTranscode?
        /// Output of the upload task
        public let upload: [String: AnyValue]?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter export: Output of the export task
        /// - Parameter exportData: Output of the export data task
        /// - Parameter `import`: Output of the upload task
        /// - Parameter upload: Output of the upload task
        ///
        public init(export: Shared.TaskExport? = nil, exportData: Shared.TaskSchemasExportData? = nil, `import`: [String: AnyValue]? = nil, transcode: Shared.TaskTranscode? = nil, upload: [String: AnyValue]? = nil) {
            self.export = export
            self.exportData = exportData
            self.`import` = `import`
            self.transcode = transcode
            self.upload = upload
        }
    }
}

extension Shared.TaskOutput: Codable {
    enum CodingKeys: String, CodingKey {
        case export
        case exportData
        case `import` = "import"
        case transcode
        case upload
    }
}

