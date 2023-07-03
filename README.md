# ColoredTemperature

ColoredTemperature is a Swift package that provides a utility for determining the color representation of a temperature value. It can be used in various applications and scenarios where temperature data needs to be visually represented with colors.

## Usage

To use ColoredTemperature in your Swift project, you can add it as a dependency in your `Package.swift` file:

```swift
// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YourProject",
    products: [
        .executable(
            name: "YourProject",
            targets: ["YourProject"]),
    ],
    dependencies: [
        .package(url: "https://github.com/your_username/ColoredTemperature", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "YourProject",
            dependencies: ["ColoredTemperature"]),
    ]
)
```

Then, import the ColoredTemperature module in your Swift file:

```swift
import ColoredTemperature
```

You can now use the getTemperatureColor function to retrieve the color representation of a temperature value:

```swift
let temperature = 25.5
let color = ColoredTemperature().getTemperatureColor(temperature)
```

The color constant will contain the appropriate color based on the temperature value.

##Supported Platforms

- iOS 15.0 and above
- macOS 12.0 and above
- tvOS 15.0 and above
- watchOS 8.0 and above

This README provides a brief overview of the ColoredTemperature package. For more detailed information and examples, refer to the package's documentation or the source code.
