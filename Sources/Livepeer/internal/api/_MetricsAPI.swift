// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _MetricsAPI: MetricsAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func getViewershipsMetrics(request: Operations.GetViewershipsMetricsRequest) async throws -> Response<Operations.GetViewershipsMetricsResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetViewershipsMetricsRequest(with: configuration, request: request)
            },
            handleResponse: handleGetViewershipsMetricsResponse
        )
    }
    
    public func getCreatorMetrics(request: Operations.GetCreatorMetricsRequest) async throws -> Response<Operations.GetCreatorMetricsResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetCreatorMetricsRequest(with: configuration, request: request)
            },
            handleResponse: handleGetCreatorMetricsResponse
        )
    }
    
    public func getPublicTotalViewsMetrics(request: Operations.GetPublicTotalViewsMetricsRequest) async throws -> Response<Operations.GetPublicTotalViewsMetricsResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetPublicTotalViewsMetricsRequest(with: configuration, request: request)
            },
            handleResponse: handleGetPublicTotalViewsMetricsResponse
        )
    }
    
    public func getUsageMetrics(request: Operations.GetUsageMetricsRequest) async throws -> Response<Operations.GetUsageMetricsResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetUsageMetricsRequest(with: configuration, request: request)
            },
            handleResponse: handleGetUsageMetricsResponse
        )
    }

}

// MARK: - Request Configuration

private func configureGetViewershipsMetricsRequest(with configuration: URLRequestConfiguration, request: Operations.GetViewershipsMetricsRequest) throws {
    configuration.path = "/data/views/query"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetCreatorMetricsRequest(with configuration: URLRequestConfiguration, request: Operations.GetCreatorMetricsRequest) throws {
    configuration.path = "/data/views/query/creator"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetPublicTotalViewsMetricsRequest(with configuration: URLRequestConfiguration, request: Operations.GetPublicTotalViewsMetricsRequest) throws {
    configuration.path = "/data/views/query/total/{playbackId}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetUsageMetricsRequest(with configuration: URLRequestConfiguration, request: Operations.GetUsageMetricsRequest) throws {
    configuration.path = "/data/usage/query"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetViewershipsMetricsResponse(response: Client.APIResponse) throws -> Operations.GetViewershipsMetricsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .classes(try JSONDecoder().decode([Shared.ViewershipMetric].self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetCreatorMetricsResponse(response: Client.APIResponse) throws -> Operations.GetCreatorMetricsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .classes(try JSONDecoder().decode([Shared.ViewershipMetric].self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetPublicTotalViewsMetricsResponse(response: Client.APIResponse) throws -> Operations.GetPublicTotalViewsMetricsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetPublicTotalViewsMetricsResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetUsageMetricsResponse(response: Client.APIResponse) throws -> Operations.GetUsageMetricsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .usageMetric(try JSONDecoder().decode(Shared.UsageMetric.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}
