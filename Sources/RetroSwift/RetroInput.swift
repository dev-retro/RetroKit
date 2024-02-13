/// A generic input type for Retro Platform libraries
public struct RetroInput {
    /// name of this input.
    public internal(set) var name: String
    /// stores whether this input is active.
    public var active: Bool
    /// which player this input is assigned too.
    public internal(set) var playerNo: Int
    
    /// initialise `RetroInput` with Name and Player Number
    ///
    /// `RetroInput` will be initialised with the following properties
    /// - ``active`` property to false
    ///
    /// - Parameters:
    ///   - name: name of this input.
    ///   - playerNo: which player this input is assigned too.
    ///
    public init(_ name: String, playerNo: Int) {
        self.name = name
        self.active = false
        self.playerNo = playerNo
    }
    
    /// initialise `RetroInput` with Name
    ///
    /// `RetroInput` will be initialised with the following properties
    /// - ``active`` property to false
    /// - ``playerNo`` property is set to 1
    ///
    ///  if you need to set ``playerNo`` then use ``init(_:playerNo:)``
    ///
    /// - Parameters:
    ///   - name: name of this input.
    ///
    public init(_ name: String) {
        self.name = name
        self.active = false
        self.playerNo = 1
    }
}
