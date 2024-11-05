//
//  RetroStateItem.swift
//  RetroSwift
//
//  Created by Glenn Hevey on 6/10/2024.
//

import Foundation
import SwiftUI

@Observable
/// Holds state value of the platform library
public class RetroStateItem<Value> {
    /// The name of the state
    public var name: String
    /// The display name of the state
    public var displayName: String
    /// The type of the state
    public var type: RetroStateType
    /// The value of the state
    public var value: Value
    
    public init(name: String, displayName: String, type: RetroStateType, value: Value) {
        self.name = name
        self.displayName = displayName
        self.type = type
        self.value = value
    }
}

/// The state types that can be used on a platform library
public enum RetroStateType: String, Codable {
    case String
    case Number
    case Bool
    case Enum
    case Binary
}
