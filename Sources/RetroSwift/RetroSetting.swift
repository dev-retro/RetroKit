//
//  RetroSetting.swift
//  RetroSwift
//
//  Created by Glenn Hevey on 30/9/2024.
//

import Foundation

public protocol RetroSetting {
    associatedtype T
    var name: String { get set }
    var displayName: String { get set }
    var type: RetroSettingType { get set }
    var displayValue: String? { get }
    var value: T { get set }
}

public enum RetroSettingType: String, Codable {
    case file
}


