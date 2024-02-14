public protocol RetroPlatform {
    var name: String { get set }
    var description: String { get set }
    var releaseDate: Int { get set }
    var noOfPlayers: Int { get set }
    var platformName: String { get set }
    var platformDescription: String { get set }

    mutating func listInputs() -> [RetroInput]
    mutating func update(inputs: [RetroInput])
    
    mutating func setup() -> Bool
    mutating func start() -> Bool
    mutating func pause() -> Bool
    mutating func stop() -> Bool
}
