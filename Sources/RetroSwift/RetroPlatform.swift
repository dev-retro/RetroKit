public protocol RetroPlatform {
    var name: String { get set }
    var description: String { get set }
    var releaseDate: Int { get set }
    var noOfPlayers: Int { get set }
    var platformName: String { get set }
    var platformDescription: String { get set }

    func listInputs() -> [RetroInput]
    func update(inputs: [RetroInput])
    
    func setup() -> Bool 
    func start() -> Bool
    func pause() -> Bool
    func stop() -> Bool
}
