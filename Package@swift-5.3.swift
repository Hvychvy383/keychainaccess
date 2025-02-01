// swift-tools-version:5.3

//  Package.swift
//  KeychainAccess
//
//  Created by Stephen Wilson on 2025/01/31.
//  Copyright (C) 2025 Stephen Craig Wilson. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "KeychainAccess",
    platforms: [
        .macOS(.v10_10), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        .library(name: "KeychainAccess", targets: ["KeychainAccess"])
    ],
    targets: [
        .target(
          name: "KeychainAccess",
          path: "Lib/KeychainAccess",
          exclude: ["Info.plist"],
          linkerSettings: [.unsafeFlags(["-Xlinker", "-no_application_extension"])]
        )
    ]
)
