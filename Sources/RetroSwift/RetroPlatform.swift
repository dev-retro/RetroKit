// The Swift Programming Language
// https://docs.swift.org/swift-book

public protocol RetroPlatform {
    var name: String { get set }
    var description: String { get set }
    var releaseDate: Int { get set }
    var noOfPlayers: Int { get set }
    var platformName: String { get set }
    var platformDescription: String { get set }
}
