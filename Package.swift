// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "RxAlertController",
	platforms: [
		.iOS(.v9)
	],
	products: [
		// Products define the executables and libraries produced by a package, and make them visible to other packages.
		.library(
			name: "RxAlertController",
			targets: ["RxAlertController"]),
	],
	dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0"))
	],
	targets: [
		.target(
			name: "RxAlertController",
			dependencies: ["RxSwift"],
			path: "RxAlertController"),
	]
)
