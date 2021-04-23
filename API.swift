//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateRoomInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, messages: [String]? = nil) {
    graphQLMap = ["id": id, "messages": messages]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var messages: [String]? {
    get {
      return graphQLMap["messages"] as! [String]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messages")
    }
  }
}

public struct ModelRoomConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(messages: ModelStringInput? = nil, and: [ModelRoomConditionInput?]? = nil, or: [ModelRoomConditionInput?]? = nil, not: ModelRoomConditionInput? = nil) {
    graphQLMap = ["messages": messages, "and": and, "or": or, "not": not]
  }

  public var messages: ModelStringInput? {
    get {
      return graphQLMap["messages"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messages")
    }
  }

  public var and: [ModelRoomConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelRoomConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelRoomConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelRoomConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelRoomConditionInput? {
    get {
      return graphQLMap["not"] as! ModelRoomConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct UpdateRoomInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, messages: [String]? = nil) {
    graphQLMap = ["id": id, "messages": messages]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var messages: [String]? {
    get {
      return graphQLMap["messages"] as! [String]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messages")
    }
  }
}

public struct DeleteRoomInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, senderName: String, senderId: String, body: String, creationDate: Int) {
    graphQLMap = ["id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var senderName: String {
    get {
      return graphQLMap["senderName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderName")
    }
  }

  public var senderId: String {
    get {
      return graphQLMap["senderID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderID")
    }
  }

  public var body: String {
    get {
      return graphQLMap["body"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "body")
    }
  }

  public var creationDate: Int {
    get {
      return graphQLMap["creationDate"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "creationDate")
    }
  }
}

public struct ModelMessageConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(senderName: ModelStringInput? = nil, senderId: ModelStringInput? = nil, body: ModelStringInput? = nil, creationDate: ModelIntInput? = nil, and: [ModelMessageConditionInput?]? = nil, or: [ModelMessageConditionInput?]? = nil, not: ModelMessageConditionInput? = nil) {
    graphQLMap = ["senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "and": and, "or": or, "not": not]
  }

  public var senderName: ModelStringInput? {
    get {
      return graphQLMap["senderName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderName")
    }
  }

  public var senderId: ModelStringInput? {
    get {
      return graphQLMap["senderID"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderID")
    }
  }

  public var body: ModelStringInput? {
    get {
      return graphQLMap["body"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "body")
    }
  }

  public var creationDate: ModelIntInput? {
    get {
      return graphQLMap["creationDate"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "creationDate")
    }
  }

  public var and: [ModelMessageConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMessageConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMessageConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMessageConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMessageConditionInput? {
    get {
      return graphQLMap["not"] as! ModelMessageConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, senderName: String? = nil, senderId: String? = nil, body: String? = nil, creationDate: Int? = nil) {
    graphQLMap = ["id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var senderName: String? {
    get {
      return graphQLMap["senderName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderName")
    }
  }

  public var senderId: String? {
    get {
      return graphQLMap["senderID"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderID")
    }
  }

  public var body: String? {
    get {
      return graphQLMap["body"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "body")
    }
  }

  public var creationDate: Int? {
    get {
      return graphQLMap["creationDate"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "creationDate")
    }
  }
}

public struct DeleteMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, friends: [String?]? = nil, rooms: [String?]? = nil) {
    graphQLMap = ["id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "friends": friends, "rooms": rooms]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var firstName: String {
    get {
      return graphQLMap["firstName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String {
    get {
      return graphQLMap["lastName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var birthday: String {
    get {
      return graphQLMap["birthday"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birthday")
    }
  }

  public var pronouns: String {
    get {
      return graphQLMap["pronouns"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pronouns")
    }
  }

  public var location: String {
    get {
      return graphQLMap["location"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var adPreference: String {
    get {
      return graphQLMap["adPreference"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "adPreference")
    }
  }

  public var friends: [String?]? {
    get {
      return graphQLMap["friends"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "friends")
    }
  }

  public var rooms: [String?]? {
    get {
      return graphQLMap["rooms"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rooms")
    }
  }
}

public struct ModelUserConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(firstName: ModelStringInput? = nil, lastName: ModelStringInput? = nil, birthday: ModelStringInput? = nil, pronouns: ModelStringInput? = nil, location: ModelStringInput? = nil, adPreference: ModelStringInput? = nil, friends: ModelStringInput? = nil, rooms: ModelStringInput? = nil, and: [ModelUserConditionInput?]? = nil, or: [ModelUserConditionInput?]? = nil, not: ModelUserConditionInput? = nil) {
    graphQLMap = ["firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "friends": friends, "rooms": rooms, "and": and, "or": or, "not": not]
  }

  public var firstName: ModelStringInput? {
    get {
      return graphQLMap["firstName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: ModelStringInput? {
    get {
      return graphQLMap["lastName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var birthday: ModelStringInput? {
    get {
      return graphQLMap["birthday"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birthday")
    }
  }

  public var pronouns: ModelStringInput? {
    get {
      return graphQLMap["pronouns"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pronouns")
    }
  }

  public var location: ModelStringInput? {
    get {
      return graphQLMap["location"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var adPreference: ModelStringInput? {
    get {
      return graphQLMap["adPreference"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "adPreference")
    }
  }

  public var friends: ModelStringInput? {
    get {
      return graphQLMap["friends"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "friends")
    }
  }

  public var rooms: ModelStringInput? {
    get {
      return graphQLMap["rooms"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rooms")
    }
  }

  public var and: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUserConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, firstName: String? = nil, lastName: String? = nil, birthday: String? = nil, pronouns: String? = nil, location: String? = nil, adPreference: String? = nil, friends: [String?]? = nil, rooms: [String?]? = nil) {
    graphQLMap = ["id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "friends": friends, "rooms": rooms]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var firstName: String? {
    get {
      return graphQLMap["firstName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String? {
    get {
      return graphQLMap["lastName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var birthday: String? {
    get {
      return graphQLMap["birthday"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birthday")
    }
  }

  public var pronouns: String? {
    get {
      return graphQLMap["pronouns"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pronouns")
    }
  }

  public var location: String? {
    get {
      return graphQLMap["location"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var adPreference: String? {
    get {
      return graphQLMap["adPreference"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "adPreference")
    }
  }

  public var friends: [String?]? {
    get {
      return graphQLMap["friends"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "friends")
    }
  }

  public var rooms: [String?]? {
    get {
      return graphQLMap["rooms"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rooms")
    }
  }
}

public struct DeleteUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelRoomFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, messages: ModelStringInput? = nil, and: [ModelRoomFilterInput?]? = nil, or: [ModelRoomFilterInput?]? = nil, not: ModelRoomFilterInput? = nil) {
    graphQLMap = ["id": id, "messages": messages, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var messages: ModelStringInput? {
    get {
      return graphQLMap["messages"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messages")
    }
  }

  public var and: [ModelRoomFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelRoomFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelRoomFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelRoomFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelRoomFilterInput? {
    get {
      return graphQLMap["not"] as! ModelRoomFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct ModelMessageFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, senderName: ModelStringInput? = nil, senderId: ModelStringInput? = nil, body: ModelStringInput? = nil, creationDate: ModelIntInput? = nil, and: [ModelMessageFilterInput?]? = nil, or: [ModelMessageFilterInput?]? = nil, not: ModelMessageFilterInput? = nil) {
    graphQLMap = ["id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var senderName: ModelStringInput? {
    get {
      return graphQLMap["senderName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderName")
    }
  }

  public var senderId: ModelStringInput? {
    get {
      return graphQLMap["senderID"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "senderID")
    }
  }

  public var body: ModelStringInput? {
    get {
      return graphQLMap["body"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "body")
    }
  }

  public var creationDate: ModelIntInput? {
    get {
      return graphQLMap["creationDate"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "creationDate")
    }
  }

  public var and: [ModelMessageFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMessageFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMessageFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMessageFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMessageFilterInput? {
    get {
      return graphQLMap["not"] as! ModelMessageFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, firstName: ModelStringInput? = nil, lastName: ModelStringInput? = nil, birthday: ModelStringInput? = nil, pronouns: ModelStringInput? = nil, location: ModelStringInput? = nil, adPreference: ModelStringInput? = nil, friends: ModelStringInput? = nil, rooms: ModelStringInput? = nil, and: [ModelUserFilterInput?]? = nil, or: [ModelUserFilterInput?]? = nil, not: ModelUserFilterInput? = nil) {
    graphQLMap = ["id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "friends": friends, "rooms": rooms, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var firstName: ModelStringInput? {
    get {
      return graphQLMap["firstName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: ModelStringInput? {
    get {
      return graphQLMap["lastName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var birthday: ModelStringInput? {
    get {
      return graphQLMap["birthday"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birthday")
    }
  }

  public var pronouns: ModelStringInput? {
    get {
      return graphQLMap["pronouns"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pronouns")
    }
  }

  public var location: ModelStringInput? {
    get {
      return graphQLMap["location"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var adPreference: ModelStringInput? {
    get {
      return graphQLMap["adPreference"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "adPreference")
    }
  }

  public var friends: ModelStringInput? {
    get {
      return graphQLMap["friends"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "friends")
    }
  }

  public var rooms: ModelStringInput? {
    get {
      return graphQLMap["rooms"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rooms")
    }
  }

  public var and: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUserFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateRoomMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateRoom($input: CreateRoomInput!, $condition: ModelRoomConditionInput) {\n  createRoom(input: $input, condition: $condition) {\n    __typename\n    id\n    messages\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateRoomInput
  public var condition: ModelRoomConditionInput?

  public init(input: CreateRoomInput, condition: ModelRoomConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createRoom", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateRoom.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createRoom: CreateRoom? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createRoom": createRoom.flatMap { $0.snapshot }])
    }

    public var createRoom: CreateRoom? {
      get {
        return (snapshot["createRoom"] as? Snapshot).flatMap { CreateRoom(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createRoom")
      }
    }

    public struct CreateRoom: GraphQLSelectionSet {
      public static let possibleTypes = ["Room"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("messages", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, messages: [String]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "messages": messages, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var messages: [String]? {
        get {
          return snapshot["messages"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "messages")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateRoomMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateRoom($input: UpdateRoomInput!, $condition: ModelRoomConditionInput) {\n  updateRoom(input: $input, condition: $condition) {\n    __typename\n    id\n    messages\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateRoomInput
  public var condition: ModelRoomConditionInput?

  public init(input: UpdateRoomInput, condition: ModelRoomConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateRoom", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateRoom.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateRoom: UpdateRoom? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateRoom": updateRoom.flatMap { $0.snapshot }])
    }

    public var updateRoom: UpdateRoom? {
      get {
        return (snapshot["updateRoom"] as? Snapshot).flatMap { UpdateRoom(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateRoom")
      }
    }

    public struct UpdateRoom: GraphQLSelectionSet {
      public static let possibleTypes = ["Room"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("messages", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, messages: [String]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "messages": messages, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var messages: [String]? {
        get {
          return snapshot["messages"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "messages")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteRoomMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteRoom($input: DeleteRoomInput!, $condition: ModelRoomConditionInput) {\n  deleteRoom(input: $input, condition: $condition) {\n    __typename\n    id\n    messages\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteRoomInput
  public var condition: ModelRoomConditionInput?

  public init(input: DeleteRoomInput, condition: ModelRoomConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteRoom", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteRoom.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteRoom: DeleteRoom? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteRoom": deleteRoom.flatMap { $0.snapshot }])
    }

    public var deleteRoom: DeleteRoom? {
      get {
        return (snapshot["deleteRoom"] as? Snapshot).flatMap { DeleteRoom(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteRoom")
      }
    }

    public struct DeleteRoom: GraphQLSelectionSet {
      public static let possibleTypes = ["Room"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("messages", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, messages: [String]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "messages": messages, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var messages: [String]? {
        get {
          return snapshot["messages"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "messages")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMessage($input: CreateMessageInput!, $condition: ModelMessageConditionInput) {\n  createMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    senderName\n    senderID\n    body\n    creationDate\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateMessageInput
  public var condition: ModelMessageConditionInput?

  public init(input: CreateMessageInput, condition: ModelMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMessage: CreateMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMessage": createMessage.flatMap { $0.snapshot }])
    }

    public var createMessage: CreateMessage? {
      get {
        return (snapshot["createMessage"] as? Snapshot).flatMap { CreateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMessage")
      }
    }

    public struct CreateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
        GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
        GraphQLField("body", type: .nonNull(.scalar(String.self))),
        GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderName: String {
        get {
          return snapshot["senderName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderName")
        }
      }

      public var senderId: String {
        get {
          return snapshot["senderID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderID")
        }
      }

      public var body: String {
        get {
          return snapshot["body"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "body")
        }
      }

      public var creationDate: Int {
        get {
          return snapshot["creationDate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "creationDate")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMessage($input: UpdateMessageInput!, $condition: ModelMessageConditionInput) {\n  updateMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    senderName\n    senderID\n    body\n    creationDate\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateMessageInput
  public var condition: ModelMessageConditionInput?

  public init(input: UpdateMessageInput, condition: ModelMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMessage: UpdateMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMessage": updateMessage.flatMap { $0.snapshot }])
    }

    public var updateMessage: UpdateMessage? {
      get {
        return (snapshot["updateMessage"] as? Snapshot).flatMap { UpdateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMessage")
      }
    }

    public struct UpdateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
        GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
        GraphQLField("body", type: .nonNull(.scalar(String.self))),
        GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderName: String {
        get {
          return snapshot["senderName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderName")
        }
      }

      public var senderId: String {
        get {
          return snapshot["senderID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderID")
        }
      }

      public var body: String {
        get {
          return snapshot["body"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "body")
        }
      }

      public var creationDate: Int {
        get {
          return snapshot["creationDate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "creationDate")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMessage($input: DeleteMessageInput!, $condition: ModelMessageConditionInput) {\n  deleteMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    senderName\n    senderID\n    body\n    creationDate\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteMessageInput
  public var condition: ModelMessageConditionInput?

  public init(input: DeleteMessageInput, condition: ModelMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMessage: DeleteMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMessage": deleteMessage.flatMap { $0.snapshot }])
    }

    public var deleteMessage: DeleteMessage? {
      get {
        return (snapshot["deleteMessage"] as? Snapshot).flatMap { DeleteMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMessage")
      }
    }

    public struct DeleteMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
        GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
        GraphQLField("body", type: .nonNull(.scalar(String.self))),
        GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderName: String {
        get {
          return snapshot["senderName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderName")
        }
      }

      public var senderId: String {
        get {
          return snapshot["senderID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderID")
        }
      }

      public var body: String {
        get {
          return snapshot["body"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "body")
        }
      }

      public var creationDate: Int {
        get {
          return snapshot["creationDate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "creationDate")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUser($input: CreateUserInput!, $condition: ModelUserConditionInput) {\n  createUser(input: $input, condition: $condition) {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    friends\n    rooms\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: CreateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUser: CreateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUser": createUser.flatMap { $0.snapshot }])
    }

    public var createUser: CreateUser? {
      get {
        return (snapshot["createUser"] as? Snapshot).flatMap { CreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUser")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("birthday", type: .nonNull(.scalar(String.self))),
        GraphQLField("pronouns", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("adPreference", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, friends: [String?]? = nil, rooms: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "friends": friends, "rooms": rooms, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var birthday: String {
        get {
          return snapshot["birthday"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birthday")
        }
      }

      public var pronouns: String {
        get {
          return snapshot["pronouns"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pronouns")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var adPreference: String {
        get {
          return snapshot["adPreference"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adPreference")
        }
      }

      public var friends: [String?]? {
        get {
          return snapshot["friends"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "friends")
        }
      }

      public var rooms: [String?]? {
        get {
          return snapshot["rooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "rooms")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUser($input: UpdateUserInput!, $condition: ModelUserConditionInput) {\n  updateUser(input: $input, condition: $condition) {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    friends\n    rooms\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: UpdateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.flatMap { $0.snapshot }])
    }

    public var updateUser: UpdateUser? {
      get {
        return (snapshot["updateUser"] as? Snapshot).flatMap { UpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("birthday", type: .nonNull(.scalar(String.self))),
        GraphQLField("pronouns", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("adPreference", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, friends: [String?]? = nil, rooms: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "friends": friends, "rooms": rooms, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var birthday: String {
        get {
          return snapshot["birthday"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birthday")
        }
      }

      public var pronouns: String {
        get {
          return snapshot["pronouns"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pronouns")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var adPreference: String {
        get {
          return snapshot["adPreference"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adPreference")
        }
      }

      public var friends: [String?]? {
        get {
          return snapshot["friends"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "friends")
        }
      }

      public var rooms: [String?]? {
        get {
          return snapshot["rooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "rooms")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser($input: DeleteUserInput!, $condition: ModelUserConditionInput) {\n  deleteUser(input: $input, condition: $condition) {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    friends\n    rooms\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteUserInput
  public var condition: ModelUserConditionInput?

  public init(input: DeleteUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUser: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUser": deleteUser.flatMap { $0.snapshot }])
    }

    public var deleteUser: DeleteUser? {
      get {
        return (snapshot["deleteUser"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUser")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("birthday", type: .nonNull(.scalar(String.self))),
        GraphQLField("pronouns", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("adPreference", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, friends: [String?]? = nil, rooms: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "friends": friends, "rooms": rooms, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var birthday: String {
        get {
          return snapshot["birthday"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birthday")
        }
      }

      public var pronouns: String {
        get {
          return snapshot["pronouns"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pronouns")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var adPreference: String {
        get {
          return snapshot["adPreference"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adPreference")
        }
      }

      public var friends: [String?]? {
        get {
          return snapshot["friends"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "friends")
        }
      }

      public var rooms: [String?]? {
        get {
          return snapshot["rooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "rooms")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class GetRoomQuery: GraphQLQuery {
  public static let operationString =
    "query GetRoom($id: ID!) {\n  getRoom(id: $id) {\n    __typename\n    id\n    messages\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getRoom", arguments: ["id": GraphQLVariable("id")], type: .object(GetRoom.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getRoom: GetRoom? = nil) {
      self.init(snapshot: ["__typename": "Query", "getRoom": getRoom.flatMap { $0.snapshot }])
    }

    public var getRoom: GetRoom? {
      get {
        return (snapshot["getRoom"] as? Snapshot).flatMap { GetRoom(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getRoom")
      }
    }

    public struct GetRoom: GraphQLSelectionSet {
      public static let possibleTypes = ["Room"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("messages", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, messages: [String]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "messages": messages, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var messages: [String]? {
        get {
          return snapshot["messages"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "messages")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListRoomsQuery: GraphQLQuery {
  public static let operationString =
    "query ListRooms($filter: ModelRoomFilterInput, $limit: Int, $nextToken: String) {\n  listRooms(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      messages\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelRoomFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelRoomFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listRooms", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListRoom.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listRooms: ListRoom? = nil) {
      self.init(snapshot: ["__typename": "Query", "listRooms": listRooms.flatMap { $0.snapshot }])
    }

    public var listRooms: ListRoom? {
      get {
        return (snapshot["listRooms"] as? Snapshot).flatMap { ListRoom(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listRooms")
      }
    }

    public struct ListRoom: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelRoomConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelRoomConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Room"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("messages", type: .list(.nonNull(.scalar(String.self)))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, messages: [String]? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Room", "id": id, "messages": messages, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var messages: [String]? {
          get {
            return snapshot["messages"] as? [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "messages")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetMessageQuery: GraphQLQuery {
  public static let operationString =
    "query GetMessage($id: ID!) {\n  getMessage(id: $id) {\n    __typename\n    id\n    senderName\n    senderID\n    body\n    creationDate\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMessage", arguments: ["id": GraphQLVariable("id")], type: .object(GetMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMessage: GetMessage? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMessage": getMessage.flatMap { $0.snapshot }])
    }

    public var getMessage: GetMessage? {
      get {
        return (snapshot["getMessage"] as? Snapshot).flatMap { GetMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMessage")
      }
    }

    public struct GetMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
        GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
        GraphQLField("body", type: .nonNull(.scalar(String.self))),
        GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderName: String {
        get {
          return snapshot["senderName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderName")
        }
      }

      public var senderId: String {
        get {
          return snapshot["senderID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderID")
        }
      }

      public var body: String {
        get {
          return snapshot["body"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "body")
        }
      }

      public var creationDate: Int {
        get {
          return snapshot["creationDate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "creationDate")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListMessagesQuery: GraphQLQuery {
  public static let operationString =
    "query ListMessages($filter: ModelMessageFilterInput, $limit: Int, $nextToken: String) {\n  listMessages(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelMessageFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelMessageFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listMessages", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listMessages: ListMessage? = nil) {
      self.init(snapshot: ["__typename": "Query", "listMessages": listMessages.flatMap { $0.snapshot }])
    }

    public var listMessages: ListMessage? {
      get {
        return (snapshot["listMessages"] as? Snapshot).flatMap { ListMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listMessages")
      }
    }

    public struct ListMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelMessageConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var senderName: String {
          get {
            return snapshot["senderName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "senderName")
          }
        }

        public var senderId: String {
          get {
            return snapshot["senderID"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "senderID")
          }
        }

        public var body: String {
          get {
            return snapshot["body"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "body")
          }
        }

        public var creationDate: Int {
          get {
            return snapshot["creationDate"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "creationDate")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser($id: ID!) {\n  getUser(id: $id) {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    friends\n    rooms\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUser", arguments: ["id": GraphQLVariable("id")], type: .object(GetUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUser: GetUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUser": getUser.flatMap { $0.snapshot }])
    }

    public var getUser: GetUser? {
      get {
        return (snapshot["getUser"] as? Snapshot).flatMap { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUser")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("birthday", type: .nonNull(.scalar(String.self))),
        GraphQLField("pronouns", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("adPreference", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, friends: [String?]? = nil, rooms: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "friends": friends, "rooms": rooms, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var birthday: String {
        get {
          return snapshot["birthday"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birthday")
        }
      }

      public var pronouns: String {
        get {
          return snapshot["pronouns"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pronouns")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var adPreference: String {
        get {
          return snapshot["adPreference"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adPreference")
        }
      }

      public var friends: [String?]? {
        get {
          return snapshot["friends"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "friends")
        }
      }

      public var rooms: [String?]? {
        get {
          return snapshot["rooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "rooms")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($filter: ModelUserFilterInput, $limit: Int, $nextToken: String) {\n  listUsers(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      firstName\n      lastName\n      birthday\n      pronouns\n      location\n      adPreference\n      friends\n      rooms\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelUserFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUsers", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUsers: ListUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUsers": listUsers.flatMap { $0.snapshot }])
    }

    public var listUsers: ListUser? {
      get {
        return (snapshot["listUsers"] as? Snapshot).flatMap { ListUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUsers")
      }
    }

    public struct ListUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUserConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
          GraphQLField("birthday", type: .nonNull(.scalar(String.self))),
          GraphQLField("pronouns", type: .nonNull(.scalar(String.self))),
          GraphQLField("location", type: .nonNull(.scalar(String.self))),
          GraphQLField("adPreference", type: .nonNull(.scalar(String.self))),
          GraphQLField("friends", type: .list(.scalar(String.self))),
          GraphQLField("rooms", type: .list(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, friends: [String?]? = nil, rooms: [String?]? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "friends": friends, "rooms": rooms, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var lastName: String {
          get {
            return snapshot["lastName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastName")
          }
        }

        public var birthday: String {
          get {
            return snapshot["birthday"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "birthday")
          }
        }

        public var pronouns: String {
          get {
            return snapshot["pronouns"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "pronouns")
          }
        }

        public var location: String {
          get {
            return snapshot["location"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "location")
          }
        }

        public var adPreference: String {
          get {
            return snapshot["adPreference"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "adPreference")
          }
        }

        public var friends: [String?]? {
          get {
            return snapshot["friends"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "friends")
          }
        }

        public var rooms: [String?]? {
          get {
            return snapshot["rooms"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "rooms")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateRoomSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateRoom {\n  onCreateRoom {\n    __typename\n    id\n    messages\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateRoom", type: .object(OnCreateRoom.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateRoom: OnCreateRoom? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateRoom": onCreateRoom.flatMap { $0.snapshot }])
    }

    public var onCreateRoom: OnCreateRoom? {
      get {
        return (snapshot["onCreateRoom"] as? Snapshot).flatMap { OnCreateRoom(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateRoom")
      }
    }

    public struct OnCreateRoom: GraphQLSelectionSet {
      public static let possibleTypes = ["Room"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("messages", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, messages: [String]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "messages": messages, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var messages: [String]? {
        get {
          return snapshot["messages"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "messages")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateRoomSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateRoom {\n  onUpdateRoom {\n    __typename\n    id\n    messages\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateRoom", type: .object(OnUpdateRoom.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateRoom: OnUpdateRoom? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateRoom": onUpdateRoom.flatMap { $0.snapshot }])
    }

    public var onUpdateRoom: OnUpdateRoom? {
      get {
        return (snapshot["onUpdateRoom"] as? Snapshot).flatMap { OnUpdateRoom(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateRoom")
      }
    }

    public struct OnUpdateRoom: GraphQLSelectionSet {
      public static let possibleTypes = ["Room"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("messages", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, messages: [String]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "messages": messages, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var messages: [String]? {
        get {
          return snapshot["messages"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "messages")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteRoomSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteRoom {\n  onDeleteRoom {\n    __typename\n    id\n    messages\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteRoom", type: .object(OnDeleteRoom.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteRoom: OnDeleteRoom? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteRoom": onDeleteRoom.flatMap { $0.snapshot }])
    }

    public var onDeleteRoom: OnDeleteRoom? {
      get {
        return (snapshot["onDeleteRoom"] as? Snapshot).flatMap { OnDeleteRoom(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteRoom")
      }
    }

    public struct OnDeleteRoom: GraphQLSelectionSet {
      public static let possibleTypes = ["Room"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("messages", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, messages: [String]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "messages": messages, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var messages: [String]? {
        get {
          return snapshot["messages"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "messages")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMessage {\n  onCreateMessage {\n    __typename\n    id\n    senderName\n    senderID\n    body\n    creationDate\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMessage", type: .object(OnCreateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMessage: OnCreateMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMessage": onCreateMessage.flatMap { $0.snapshot }])
    }

    public var onCreateMessage: OnCreateMessage? {
      get {
        return (snapshot["onCreateMessage"] as? Snapshot).flatMap { OnCreateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMessage")
      }
    }

    public struct OnCreateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
        GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
        GraphQLField("body", type: .nonNull(.scalar(String.self))),
        GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderName: String {
        get {
          return snapshot["senderName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderName")
        }
      }

      public var senderId: String {
        get {
          return snapshot["senderID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderID")
        }
      }

      public var body: String {
        get {
          return snapshot["body"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "body")
        }
      }

      public var creationDate: Int {
        get {
          return snapshot["creationDate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "creationDate")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateMessage {\n  onUpdateMessage {\n    __typename\n    id\n    senderName\n    senderID\n    body\n    creationDate\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateMessage", type: .object(OnUpdateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateMessage: OnUpdateMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateMessage": onUpdateMessage.flatMap { $0.snapshot }])
    }

    public var onUpdateMessage: OnUpdateMessage? {
      get {
        return (snapshot["onUpdateMessage"] as? Snapshot).flatMap { OnUpdateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateMessage")
      }
    }

    public struct OnUpdateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
        GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
        GraphQLField("body", type: .nonNull(.scalar(String.self))),
        GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderName: String {
        get {
          return snapshot["senderName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderName")
        }
      }

      public var senderId: String {
        get {
          return snapshot["senderID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderID")
        }
      }

      public var body: String {
        get {
          return snapshot["body"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "body")
        }
      }

      public var creationDate: Int {
        get {
          return snapshot["creationDate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "creationDate")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteMessage {\n  onDeleteMessage {\n    __typename\n    id\n    senderName\n    senderID\n    body\n    creationDate\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteMessage", type: .object(OnDeleteMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteMessage: OnDeleteMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteMessage": onDeleteMessage.flatMap { $0.snapshot }])
    }

    public var onDeleteMessage: OnDeleteMessage? {
      get {
        return (snapshot["onDeleteMessage"] as? Snapshot).flatMap { OnDeleteMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteMessage")
      }
    }

    public struct OnDeleteMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
        GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
        GraphQLField("body", type: .nonNull(.scalar(String.self))),
        GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var senderName: String {
        get {
          return snapshot["senderName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderName")
        }
      }

      public var senderId: String {
        get {
          return snapshot["senderID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "senderID")
        }
      }

      public var body: String {
        get {
          return snapshot["body"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "body")
        }
      }

      public var creationDate: Int {
        get {
          return snapshot["creationDate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "creationDate")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUser {\n  onCreateUser {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    friends\n    rooms\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUser", type: .object(OnCreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUser: OnCreateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUser": onCreateUser.flatMap { $0.snapshot }])
    }

    public var onCreateUser: OnCreateUser? {
      get {
        return (snapshot["onCreateUser"] as? Snapshot).flatMap { OnCreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUser")
      }
    }

    public struct OnCreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("birthday", type: .nonNull(.scalar(String.self))),
        GraphQLField("pronouns", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("adPreference", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, friends: [String?]? = nil, rooms: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "friends": friends, "rooms": rooms, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var birthday: String {
        get {
          return snapshot["birthday"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birthday")
        }
      }

      public var pronouns: String {
        get {
          return snapshot["pronouns"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pronouns")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var adPreference: String {
        get {
          return snapshot["adPreference"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adPreference")
        }
      }

      public var friends: [String?]? {
        get {
          return snapshot["friends"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "friends")
        }
      }

      public var rooms: [String?]? {
        get {
          return snapshot["rooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "rooms")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUser {\n  onUpdateUser {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    friends\n    rooms\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUser", type: .object(OnUpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUser: OnUpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUser": onUpdateUser.flatMap { $0.snapshot }])
    }

    public var onUpdateUser: OnUpdateUser? {
      get {
        return (snapshot["onUpdateUser"] as? Snapshot).flatMap { OnUpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUser")
      }
    }

    public struct OnUpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("birthday", type: .nonNull(.scalar(String.self))),
        GraphQLField("pronouns", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("adPreference", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, friends: [String?]? = nil, rooms: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "friends": friends, "rooms": rooms, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var birthday: String {
        get {
          return snapshot["birthday"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birthday")
        }
      }

      public var pronouns: String {
        get {
          return snapshot["pronouns"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pronouns")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var adPreference: String {
        get {
          return snapshot["adPreference"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adPreference")
        }
      }

      public var friends: [String?]? {
        get {
          return snapshot["friends"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "friends")
        }
      }

      public var rooms: [String?]? {
        get {
          return snapshot["rooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "rooms")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUser {\n  onDeleteUser {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    friends\n    rooms\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUser", type: .object(OnDeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUser: OnDeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUser": onDeleteUser.flatMap { $0.snapshot }])
    }

    public var onDeleteUser: OnDeleteUser? {
      get {
        return (snapshot["onDeleteUser"] as? Snapshot).flatMap { OnDeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUser")
      }
    }

    public struct OnDeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("birthday", type: .nonNull(.scalar(String.self))),
        GraphQLField("pronouns", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("adPreference", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, friends: [String?]? = nil, rooms: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "friends": friends, "rooms": rooms, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var birthday: String {
        get {
          return snapshot["birthday"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birthday")
        }
      }

      public var pronouns: String {
        get {
          return snapshot["pronouns"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pronouns")
        }
      }

      public var location: String {
        get {
          return snapshot["location"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var adPreference: String {
        get {
          return snapshot["adPreference"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adPreference")
        }
      }

      public var friends: [String?]? {
        get {
          return snapshot["friends"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "friends")
        }
      }

      public var rooms: [String?]? {
        get {
          return snapshot["rooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "rooms")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}