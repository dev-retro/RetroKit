/// The protocol that defines the basic structure of a RetroPlatform
public protocol RetroPlatform {
    /// Name of the Platform Library
    var name: String { get set }
    /// Description of the Platform Library
    var description: String { get set }
    /// The year the platform was released
    var releaseDate: Int { get set }
    /// The number of players that can play on this platform
    var noOfPlayers: Int { get set }
    /// The name of the platform
    var platformName: String { get set }
    /// The description of the platform
    var platformDescription: String { get set }
    /// Debug state for the platform
    var debugState: RetroState { get set }

    /// List of Inputs for this platform
    func listInputs() -> [RetroInput]
    /// Update the inputs for this platform
    /// - Parameter inputs: list of inputs to update
    func update(inputs: [RetroInput])
    /// Update the settings for this platform
    /// - Parameter settings: The group of settings to update
    func update(settings: some RetroSettings)

    /// Start the platform
    /// - Returns: true if the platform started successfully else will return false
    func start() -> Bool
    /// Pause the platform
    /// - Returns: true if the platform paused successfully else will return false
    func pause() -> Bool
    /// Stop the platform
    /// - Returns: true if the platform stopped successfully else will return false
    func stop() -> Bool
    /// load a file into the platform
    /// - Parameter file: the file to load
    func load(file: [UInt8])
}
