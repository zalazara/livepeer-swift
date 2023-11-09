// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _WebhookAPI: WebhookAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func getWebhooks() async throws -> Response<Operations.GetWebhooksResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetWebhooksRequest(with: configuration)
            },
            handleResponse: handleGetWebhooksResponse
        )
    }
    
    public func createWebhook() async throws -> Response<Operations.CreateWebhookResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureCreateWebhookRequest(with: configuration)
            },
            handleResponse: handleCreateWebhookResponse
        )
    }
    
    public func deleteWebhook(request: Operations.DeleteWebhookRequest) async throws -> Response<Operations.DeleteWebhookResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureDeleteWebhookRequest(with: configuration, request: request)
            },
            handleResponse: handleDeleteWebhookResponse
        )
    }
    
    public func getWebhook(request: Operations.GetWebhookRequest) async throws -> Response<Operations.GetWebhookResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetWebhookRequest(with: configuration, request: request)
            },
            handleResponse: handleGetWebhookResponse
        )
    }
    
    public func updateWebhook(request: Operations.UpdateWebhookRequest) async throws -> Response<Operations.UpdateWebhookResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureUpdateWebhookRequest(with: configuration, request: request)
            },
            handleResponse: handleUpdateWebhookResponse
        )
    }

}

// MARK: - Request Configuration

private func configureGetWebhooksRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/webhook"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureCreateWebhookRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/webhook"
    configuration.method = .post
    configuration.telemetryHeader = .userAgent
}

private func configureDeleteWebhookRequest(with configuration: URLRequestConfiguration, request: Operations.DeleteWebhookRequest) throws {
    configuration.path = "/webhook/{id}"
    configuration.method = .delete
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetWebhookRequest(with configuration: URLRequestConfiguration, request: Operations.GetWebhookRequest) throws {
    configuration.path = "/webhook/{id}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureUpdateWebhookRequest(with configuration: URLRequestConfiguration, request: Operations.UpdateWebhookRequest) throws {
    configuration.path = "/webhook/{id}"
    configuration.method = .put
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetWebhooksResponse(response: Client.APIResponse) throws -> Operations.GetWebhooksResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .classes(try JSONDecoder().decode([Shared.Webhook].self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleCreateWebhookResponse(response: Client.APIResponse) throws -> Operations.CreateWebhookResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .webhook(try JSONDecoder().decode(Shared.Webhook.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleDeleteWebhookResponse(response: Client.APIResponse) throws -> Operations.DeleteWebhookResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .webhook(try JSONDecoder().decode(Shared.Webhook.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetWebhookResponse(response: Client.APIResponse) throws -> Operations.GetWebhookResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .webhook(try JSONDecoder().decode(Shared.Webhook.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleUpdateWebhookResponse(response: Client.APIResponse) throws -> Operations.UpdateWebhookResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .webhook(try JSONDecoder().decode(Shared.Webhook.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}
