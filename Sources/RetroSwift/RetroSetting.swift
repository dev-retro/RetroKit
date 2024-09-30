//
//  RetroSetting.swift
//  RetroSwift
//
//  Created by Glenn Hevey on 30/9/2024.
//

import Foundation

public protocol RetroSetting: Codable {
    associatedtype Value: Codable
    var name: String { get }
    var type: RetroSettingType { get }
    var value: Value { get set }
}

public enum RetroSettingType: String, Codable {
    case file
}
