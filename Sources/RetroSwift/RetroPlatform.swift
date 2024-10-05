public protocol RetroPlatform {
    var name: String { get set }
    var description: String { get set }
    var releaseDate: Int { get set }
    var noOfPlayers: Int { get set }
    var platformName: String { get set }
    var platformDescription: String { get set }
    
    func listInputs() -> [RetroInput]
    func update(inputs: [RetroInput])
    func update(settings: some RetroSettings)
    
    func listSettings() throws -> String
    func setup(settings: String) throws -> Bool
    
    
    func start() -> Bool
    func pause() -> Bool
    func stop() -> Bool
    
    func load(file: [UInt8])
    
    
}

extension RetroPlatform {
    public func setup(settings: String) throws -> Bool {
        return false
    }
}
