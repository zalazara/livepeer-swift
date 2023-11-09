# Livepeer Swift Library

The Livepeer Swift library provides convenient access to the Livepeer Studio API from applications built for iOS using Swift library.

## Documentation

For full documentation and examples, please visit [docs.livepeer.org](https://docs.livepeer.org/sdks/swift/).

## Requirements

The SDK supports iOS 13 and later.

## Installation

### Swift Package Manager

You can add `Livepeer` to your project directly in Xcode `(File > Add Packages...)` or by adding it to your project's Package.swift file:

```bash
dependencies: [
    .package(url: "", .upToNextMajor(from: "0.0.1"))
]
```

## Usage

```swift
import Foundation
import Livepeer

let livepeer = Client(security: .apiKey(""))

let response = try await livepeer.stream.getAll()

switch response.data {
case .classes(let classes):
    // Handle response
    break
case .empty:
    // Handle empty response
    break
}

```
