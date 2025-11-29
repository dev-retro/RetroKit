//
//  RetroSetting.swift
//  RetroSwift
//
//  Created by Glenn Hevey on 30/9/2024.
//

import Foundation

/// A protocol for a setting that can be used to configure a platform library setting
public protocol RetroSetting {
    /// The type of the setting's value
    associatedtype T
    /// The name of the setting
    static var name: String { get }
    /// The display name of the setting
    var displayName: String { get }
    /// The type of the setting
    var type: RetroSettingType { get }
    /// The what to display when the value of the setting is set
    var displayValue: String? { get set }
    /// The value of the setting
    var value: T { get set }
}

/// The setting types that can be used to configure a platform library setting
public enum RetroSettingType: String, Codable {
    /// This setting is for inputting a file
    case file
}

