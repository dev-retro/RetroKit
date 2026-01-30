import Foundation

public enum RetroSettingValue: Codable {
    case string(String)
    case number(Double)
    case bool(Bool)
    case bytes(Data)
    case path(String)

    private enum CodingKeys: String, CodingKey {
        case type
        case value
    }

    private enum ValueType: String, Codable {
        case string
        case number
        case bool
        case bytes
        case path
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(ValueType.self, forKey: .type)
        switch type {
        case .string:
            self = .string(try container.decode(String.self, forKey: .value))
        case .number:
            self = .number(try container.decode(Double.self, forKey: .value))
        case .bool:
            self = .bool(try container.decode(Bool.self, forKey: .value))
        case .bytes:
            self = .bytes(try container.decode(Data.self, forKey: .value))
        case .path:
            self = .path(try container.decode(String.self, forKey: .value))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .string(let value):
            try container.encode(ValueType.string, forKey: .type)
            try container.encode(value, forKey: .value)
        case .number(let value):
            try container.encode(ValueType.number, forKey: .type)
            try container.encode(value, forKey: .value)
        case .bool(let value):
            try container.encode(ValueType.bool, forKey: .type)
            try container.encode(value, forKey: .value)
        case .bytes(let value):
            try container.encode(ValueType.bytes, forKey: .type)
            try container.encode(value, forKey: .value)
        case .path(let value):
            try container.encode(ValueType.path, forKey: .type)
            try container.encode(value, forKey: .value)
        }
    }
}

public struct RetroSettingItem: Codable {
    public var name: String
    public var displayName: String
    public var type: RetroSettingType
    public var displayValue: String?
    public var value: RetroSettingValue?

    public init(
        name: String,
        displayName: String,
        type: RetroSettingType,
        displayValue: String?,
        value: RetroSettingValue?
    ) {
        self.name = name
        self.displayName = displayName
        self.type = type
        self.displayValue = displayValue
        self.value = value
    }
}
