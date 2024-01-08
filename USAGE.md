```swift
import Foundation
import Livepeer

let client = Client(security: .apiKey(""))

let response = try await client.getStream()

switch response.data {
case .classes(let classes):
    // Handle response
    break
case .empty:
    // Handle empty response
    break
}

```
