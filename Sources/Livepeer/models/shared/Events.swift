// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    public enum Events: String, Codable, APIValue {
        case streamStarted = "stream.started"
        case streamDetection = "stream.detection"
        case streamIdle = "stream.idle"
        case recordingReady = "recording.ready"
        case recordingStarted = "recording.started"
        case recordingWaiting = "recording.waiting"
        case multistreamConnected = "multistream.connected"
        case multistreamError = "multistream.error"
        case multistreamDisconnected = "multistream.disconnected"
        case playbackUserNew = "playback.user.new"
        case playbackAccessControl = "playback.accessControl"
        case assetCreated = "asset.created"
        case assetUpdated = "asset.updated"
        case assetFailed = "asset.failed"
        case assetReady = "asset.ready"
        case assetDeleted = "asset.deleted"
        case taskSpawned = "task.spawned"
        case taskUpdated = "task.updated"
        case taskCompleted = "task.completed"
        case taskFailed = "task.failed"
    }
}