//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateRoomInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String, members: [String], messages: [MessageInput]? = nil, blueMode: Bool, lastSeenByMember1: Int? = nil, lastSeenByMember2: Int? = nil) {
    graphQLMap = ["id": id, "name": name, "members": members, "messages": messages, "blueMode": blueMode, "lastSeenByMember1": lastSeenByMember1, "lastSeenByMember2": lastSeenByMember2]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var members: [String] {
    get {
      return graphQLMap["members"] as! [String]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "members")
    }
  }

  public var messages: [MessageInput]? {
    get {
      return graphQLMap["messages"] as! [MessageInput]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messages")
    }
  }

  public var blueMode: Bool {
    get {
      return graphQLMap["blueMode"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blueMode")
    }
  }

  public var lastSeenByMember1: Int? {
    get {
      return graphQLMap["lastSeenByMember1"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastSeenByMember1")
    }
  }

  public var lastSeenByMember2: Int? {
    get {
      return graphQLMap["lastSeenByMember2"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastSeenByMember2")
    }
  }
}

public struct MessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
    graphQLMap = ["id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
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

  public var attachmentPath: String? {
    get {
      return graphQLMap["attachmentPath"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attachmentPath")
    }
  }

  public var stickerNumber: Int? {
    get {
      return graphQLMap["stickerNumber"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "stickerNumber")
    }
  }
}

public struct ModelRoomConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringInput? = nil, members: ModelStringInput? = nil, blueMode: ModelBooleanInput? = nil, lastSeenByMember1: ModelIntInput? = nil, lastSeenByMember2: ModelIntInput? = nil, and: [ModelRoomConditionInput?]? = nil, or: [ModelRoomConditionInput?]? = nil, not: ModelRoomConditionInput? = nil) {
    graphQLMap = ["name": name, "members": members, "blueMode": blueMode, "lastSeenByMember1": lastSeenByMember1, "lastSeenByMember2": lastSeenByMember2, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var members: ModelStringInput? {
    get {
      return graphQLMap["members"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "members")
    }
  }

  public var blueMode: ModelBooleanInput? {
    get {
      return graphQLMap["blueMode"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blueMode")
    }
  }

  public var lastSeenByMember1: ModelIntInput? {
    get {
      return graphQLMap["lastSeenByMember1"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastSeenByMember1")
    }
  }

  public var lastSeenByMember2: ModelIntInput? {
    get {
      return graphQLMap["lastSeenByMember2"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastSeenByMember2")
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

public struct ModelBooleanInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Bool? = nil, eq: Bool? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Bool? {
    get {
      return graphQLMap["ne"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Bool? {
    get {
      return graphQLMap["eq"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
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

public struct UpdateRoomInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, members: [String]? = nil, messages: [MessageInput]? = nil, blueMode: Bool? = nil, lastSeenByMember1: Int? = nil, lastSeenByMember2: Int? = nil) {
    graphQLMap = ["id": id, "name": name, "members": members, "messages": messages, "blueMode": blueMode, "lastSeenByMember1": lastSeenByMember1, "lastSeenByMember2": lastSeenByMember2]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var members: [String]? {
    get {
      return graphQLMap["members"] as! [String]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "members")
    }
  }

  public var messages: [MessageInput]? {
    get {
      return graphQLMap["messages"] as! [MessageInput]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "messages")
    }
  }

  public var blueMode: Bool? {
    get {
      return graphQLMap["blueMode"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blueMode")
    }
  }

  public var lastSeenByMember1: Int? {
    get {
      return graphQLMap["lastSeenByMember1"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastSeenByMember1")
    }
  }

  public var lastSeenByMember2: Int? {
    get {
      return graphQLMap["lastSeenByMember2"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastSeenByMember2")
    }
  }
}

public struct DeleteRoomInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateReportedMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, reporterId: String, reportedMessage: MessageInput, previousMessages: [MessageInput]? = nil) {
    graphQLMap = ["id": id, "reporterID": reporterId, "reportedMessage": reportedMessage, "previousMessages": previousMessages]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var reporterId: String {
    get {
      return graphQLMap["reporterID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "reporterID")
    }
  }

  public var reportedMessage: MessageInput {
    get {
      return graphQLMap["reportedMessage"] as! MessageInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "reportedMessage")
    }
  }

  public var previousMessages: [MessageInput]? {
    get {
      return graphQLMap["previousMessages"] as! [MessageInput]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "previousMessages")
    }
  }
}

public struct ModelReportedMessageConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(reporterId: ModelStringInput? = nil, and: [ModelReportedMessageConditionInput?]? = nil, or: [ModelReportedMessageConditionInput?]? = nil, not: ModelReportedMessageConditionInput? = nil) {
    graphQLMap = ["reporterID": reporterId, "and": and, "or": or, "not": not]
  }

  public var reporterId: ModelStringInput? {
    get {
      return graphQLMap["reporterID"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "reporterID")
    }
  }

  public var and: [ModelReportedMessageConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelReportedMessageConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelReportedMessageConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelReportedMessageConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelReportedMessageConditionInput? {
    get {
      return graphQLMap["not"] as! ModelReportedMessageConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateReportedMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(reporterId: String? = nil, reportedMessage: MessageInput? = nil, previousMessages: [MessageInput]? = nil) {
    graphQLMap = ["reporterID": reporterId, "reportedMessage": reportedMessage, "previousMessages": previousMessages]
  }

  public var reporterId: String? {
    get {
      return graphQLMap["reporterID"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "reporterID")
    }
  }

  public var reportedMessage: MessageInput? {
    get {
      return graphQLMap["reportedMessage"] as! MessageInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "reportedMessage")
    }
  }

  public var previousMessages: [MessageInput]? {
    get {
      return graphQLMap["previousMessages"] as! [MessageInput]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "previousMessages")
    }
  }
}

public struct DeleteReportedMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, deviceFcmToken: String, isOnline: Bool, secretPin: String, friends: [String?]? = nil, rooms: [String?]? = nil, hiddenRooms: [String?]? = nil, smileNotes: [SmileNoteInput?]? = nil, shakingCoolLinks: [String?]? = nil, tokens: Int, background: Int, unlockedStickers: [Int?]? = nil, blueMode: Bool) {
    graphQLMap = ["id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "deviceFCMToken": deviceFcmToken, "isOnline": isOnline, "secretPin": secretPin, "friends": friends, "rooms": rooms, "hiddenRooms": hiddenRooms, "smileNotes": smileNotes, "shakingCoolLinks": shakingCoolLinks, "tokens": tokens, "background": background, "unlockedStickers": unlockedStickers, "blueMode": blueMode]
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

  public var deviceFcmToken: String {
    get {
      return graphQLMap["deviceFCMToken"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "deviceFCMToken")
    }
  }

  public var isOnline: Bool {
    get {
      return graphQLMap["isOnline"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isOnline")
    }
  }

  public var secretPin: String {
    get {
      return graphQLMap["secretPin"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "secretPin")
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

  public var hiddenRooms: [String?]? {
    get {
      return graphQLMap["hiddenRooms"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hiddenRooms")
    }
  }

  public var smileNotes: [SmileNoteInput?]? {
    get {
      return graphQLMap["smileNotes"] as! [SmileNoteInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "smileNotes")
    }
  }

  public var shakingCoolLinks: [String?]? {
    get {
      return graphQLMap["shakingCoolLinks"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "shakingCoolLinks")
    }
  }

  public var tokens: Int {
    get {
      return graphQLMap["tokens"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tokens")
    }
  }

  public var background: Int {
    get {
      return graphQLMap["background"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "background")
    }
  }

  public var unlockedStickers: [Int?]? {
    get {
      return graphQLMap["unlockedStickers"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "unlockedStickers")
    }
  }

  public var blueMode: Bool {
    get {
      return graphQLMap["blueMode"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blueMode")
    }
  }
}

public struct SmileNoteInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, message: MessageInput, favorite: Bool) {
    graphQLMap = ["id": id, "message": message, "favorite": favorite]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var message: MessageInput {
    get {
      return graphQLMap["message"] as! MessageInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "message")
    }
  }

  public var favorite: Bool {
    get {
      return graphQLMap["favorite"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "favorite")
    }
  }
}

public struct ModelUserConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(firstName: ModelStringInput? = nil, lastName: ModelStringInput? = nil, birthday: ModelStringInput? = nil, pronouns: ModelStringInput? = nil, location: ModelStringInput? = nil, adPreference: ModelStringInput? = nil, deviceFcmToken: ModelStringInput? = nil, isOnline: ModelBooleanInput? = nil, secretPin: ModelStringInput? = nil, friends: ModelStringInput? = nil, rooms: ModelStringInput? = nil, hiddenRooms: ModelStringInput? = nil, shakingCoolLinks: ModelStringInput? = nil, tokens: ModelIntInput? = nil, background: ModelIntInput? = nil, unlockedStickers: ModelIntInput? = nil, blueMode: ModelBooleanInput? = nil, and: [ModelUserConditionInput?]? = nil, or: [ModelUserConditionInput?]? = nil, not: ModelUserConditionInput? = nil) {
    graphQLMap = ["firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "deviceFCMToken": deviceFcmToken, "isOnline": isOnline, "secretPin": secretPin, "friends": friends, "rooms": rooms, "hiddenRooms": hiddenRooms, "shakingCoolLinks": shakingCoolLinks, "tokens": tokens, "background": background, "unlockedStickers": unlockedStickers, "blueMode": blueMode, "and": and, "or": or, "not": not]
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

  public var deviceFcmToken: ModelStringInput? {
    get {
      return graphQLMap["deviceFCMToken"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "deviceFCMToken")
    }
  }

  public var isOnline: ModelBooleanInput? {
    get {
      return graphQLMap["isOnline"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isOnline")
    }
  }

  public var secretPin: ModelStringInput? {
    get {
      return graphQLMap["secretPin"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "secretPin")
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

  public var hiddenRooms: ModelStringInput? {
    get {
      return graphQLMap["hiddenRooms"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hiddenRooms")
    }
  }

  public var shakingCoolLinks: ModelStringInput? {
    get {
      return graphQLMap["shakingCoolLinks"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "shakingCoolLinks")
    }
  }

  public var tokens: ModelIntInput? {
    get {
      return graphQLMap["tokens"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tokens")
    }
  }

  public var background: ModelIntInput? {
    get {
      return graphQLMap["background"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "background")
    }
  }

  public var unlockedStickers: ModelIntInput? {
    get {
      return graphQLMap["unlockedStickers"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "unlockedStickers")
    }
  }

  public var blueMode: ModelBooleanInput? {
    get {
      return graphQLMap["blueMode"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blueMode")
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

  public init(id: GraphQLID, firstName: String? = nil, lastName: String? = nil, birthday: String? = nil, pronouns: String? = nil, location: String? = nil, adPreference: String? = nil, deviceFcmToken: String? = nil, isOnline: Bool? = nil, secretPin: String? = nil, friends: [String?]? = nil, rooms: [String?]? = nil, hiddenRooms: [String?]? = nil, smileNotes: [SmileNoteInput?]? = nil, shakingCoolLinks: [String?]? = nil, tokens: Int? = nil, background: Int? = nil, unlockedStickers: [Int?]? = nil, blueMode: Bool? = nil) {
    graphQLMap = ["id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "deviceFCMToken": deviceFcmToken, "isOnline": isOnline, "secretPin": secretPin, "friends": friends, "rooms": rooms, "hiddenRooms": hiddenRooms, "smileNotes": smileNotes, "shakingCoolLinks": shakingCoolLinks, "tokens": tokens, "background": background, "unlockedStickers": unlockedStickers, "blueMode": blueMode]
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

  public var deviceFcmToken: String? {
    get {
      return graphQLMap["deviceFCMToken"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "deviceFCMToken")
    }
  }

  public var isOnline: Bool? {
    get {
      return graphQLMap["isOnline"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isOnline")
    }
  }

  public var secretPin: String? {
    get {
      return graphQLMap["secretPin"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "secretPin")
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

  public var hiddenRooms: [String?]? {
    get {
      return graphQLMap["hiddenRooms"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hiddenRooms")
    }
  }

  public var smileNotes: [SmileNoteInput?]? {
    get {
      return graphQLMap["smileNotes"] as! [SmileNoteInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "smileNotes")
    }
  }

  public var shakingCoolLinks: [String?]? {
    get {
      return graphQLMap["shakingCoolLinks"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "shakingCoolLinks")
    }
  }

  public var tokens: Int? {
    get {
      return graphQLMap["tokens"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tokens")
    }
  }

  public var background: Int? {
    get {
      return graphQLMap["background"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "background")
    }
  }

  public var unlockedStickers: [Int?]? {
    get {
      return graphQLMap["unlockedStickers"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "unlockedStickers")
    }
  }

  public var blueMode: Bool? {
    get {
      return graphQLMap["blueMode"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blueMode")
    }
  }
}

public struct DeleteUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateAdvertisementInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, category: String, videoName: String, adLink: String, duration: Double, hasAudio: Bool, likes: Int, views: Int, shares: Int, clicks: Int) {
    graphQLMap = ["id": id, "category": category, "videoName": videoName, "adLink": adLink, "duration": duration, "hasAudio": hasAudio, "likes": likes, "views": views, "shares": shares, "clicks": clicks]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var category: String {
    get {
      return graphQLMap["category"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var videoName: String {
    get {
      return graphQLMap["videoName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "videoName")
    }
  }

  public var adLink: String {
    get {
      return graphQLMap["adLink"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "adLink")
    }
  }

  public var duration: Double {
    get {
      return graphQLMap["duration"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "duration")
    }
  }

  public var hasAudio: Bool {
    get {
      return graphQLMap["hasAudio"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hasAudio")
    }
  }

  public var likes: Int {
    get {
      return graphQLMap["likes"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "likes")
    }
  }

  public var views: Int {
    get {
      return graphQLMap["views"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "views")
    }
  }

  public var shares: Int {
    get {
      return graphQLMap["shares"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "shares")
    }
  }

  public var clicks: Int {
    get {
      return graphQLMap["clicks"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clicks")
    }
  }
}

public struct ModelAdvertisementConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(category: ModelStringInput? = nil, videoName: ModelStringInput? = nil, adLink: ModelStringInput? = nil, duration: ModelFloatInput? = nil, hasAudio: ModelBooleanInput? = nil, likes: ModelIntInput? = nil, views: ModelIntInput? = nil, shares: ModelIntInput? = nil, clicks: ModelIntInput? = nil, and: [ModelAdvertisementConditionInput?]? = nil, or: [ModelAdvertisementConditionInput?]? = nil, not: ModelAdvertisementConditionInput? = nil) {
    graphQLMap = ["category": category, "videoName": videoName, "adLink": adLink, "duration": duration, "hasAudio": hasAudio, "likes": likes, "views": views, "shares": shares, "clicks": clicks, "and": and, "or": or, "not": not]
  }

  public var category: ModelStringInput? {
    get {
      return graphQLMap["category"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var videoName: ModelStringInput? {
    get {
      return graphQLMap["videoName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "videoName")
    }
  }

  public var adLink: ModelStringInput? {
    get {
      return graphQLMap["adLink"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "adLink")
    }
  }

  public var duration: ModelFloatInput? {
    get {
      return graphQLMap["duration"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "duration")
    }
  }

  public var hasAudio: ModelBooleanInput? {
    get {
      return graphQLMap["hasAudio"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hasAudio")
    }
  }

  public var likes: ModelIntInput? {
    get {
      return graphQLMap["likes"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "likes")
    }
  }

  public var views: ModelIntInput? {
    get {
      return graphQLMap["views"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "views")
    }
  }

  public var shares: ModelIntInput? {
    get {
      return graphQLMap["shares"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "shares")
    }
  }

  public var clicks: ModelIntInput? {
    get {
      return graphQLMap["clicks"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clicks")
    }
  }

  public var and: [ModelAdvertisementConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelAdvertisementConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelAdvertisementConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelAdvertisementConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelAdvertisementConditionInput? {
    get {
      return graphQLMap["not"] as! ModelAdvertisementConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelFloatInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Double? = nil, eq: Double? = nil, le: Double? = nil, lt: Double? = nil, ge: Double? = nil, gt: Double? = nil, between: [Double?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Double? {
    get {
      return graphQLMap["ne"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Double? {
    get {
      return graphQLMap["eq"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Double? {
    get {
      return graphQLMap["le"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Double? {
    get {
      return graphQLMap["lt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Double? {
    get {
      return graphQLMap["ge"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Double? {
    get {
      return graphQLMap["gt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Double?]? {
    get {
      return graphQLMap["between"] as! [Double?]?
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

public struct UpdateAdvertisementInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, category: String? = nil, videoName: String? = nil, adLink: String? = nil, duration: Double? = nil, hasAudio: Bool? = nil, likes: Int? = nil, views: Int? = nil, shares: Int? = nil, clicks: Int? = nil) {
    graphQLMap = ["id": id, "category": category, "videoName": videoName, "adLink": adLink, "duration": duration, "hasAudio": hasAudio, "likes": likes, "views": views, "shares": shares, "clicks": clicks]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var category: String? {
    get {
      return graphQLMap["category"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var videoName: String? {
    get {
      return graphQLMap["videoName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "videoName")
    }
  }

  public var adLink: String? {
    get {
      return graphQLMap["adLink"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "adLink")
    }
  }

  public var duration: Double? {
    get {
      return graphQLMap["duration"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "duration")
    }
  }

  public var hasAudio: Bool? {
    get {
      return graphQLMap["hasAudio"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hasAudio")
    }
  }

  public var likes: Int? {
    get {
      return graphQLMap["likes"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "likes")
    }
  }

  public var views: Int? {
    get {
      return graphQLMap["views"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "views")
    }
  }

  public var shares: Int? {
    get {
      return graphQLMap["shares"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "shares")
    }
  }

  public var clicks: Int? {
    get {
      return graphQLMap["clicks"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clicks")
    }
  }
}

public struct DeleteAdvertisementInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateManagementDocumentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, documents: [String?]? = nil) {
    graphQLMap = ["id": id, "documents": documents]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var documents: [String?]? {
    get {
      return graphQLMap["documents"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documents")
    }
  }
}

public struct ModelManagementDocumentConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(documents: ModelStringInput? = nil, and: [ModelManagementDocumentConditionInput?]? = nil, or: [ModelManagementDocumentConditionInput?]? = nil, not: ModelManagementDocumentConditionInput? = nil) {
    graphQLMap = ["documents": documents, "and": and, "or": or, "not": not]
  }

  public var documents: ModelStringInput? {
    get {
      return graphQLMap["documents"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documents")
    }
  }

  public var and: [ModelManagementDocumentConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelManagementDocumentConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelManagementDocumentConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelManagementDocumentConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelManagementDocumentConditionInput? {
    get {
      return graphQLMap["not"] as! ModelManagementDocumentConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateManagementDocumentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, documents: [String?]? = nil) {
    graphQLMap = ["id": id, "documents": documents]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var documents: [String?]? {
    get {
      return graphQLMap["documents"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documents")
    }
  }
}

public struct DeleteManagementDocumentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelRoomFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, name: ModelStringInput? = nil, members: ModelStringInput? = nil, blueMode: ModelBooleanInput? = nil, lastSeenByMember1: ModelIntInput? = nil, lastSeenByMember2: ModelIntInput? = nil, and: [ModelRoomFilterInput?]? = nil, or: [ModelRoomFilterInput?]? = nil, not: ModelRoomFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "members": members, "blueMode": blueMode, "lastSeenByMember1": lastSeenByMember1, "lastSeenByMember2": lastSeenByMember2, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var members: ModelStringInput? {
    get {
      return graphQLMap["members"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "members")
    }
  }

  public var blueMode: ModelBooleanInput? {
    get {
      return graphQLMap["blueMode"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blueMode")
    }
  }

  public var lastSeenByMember1: ModelIntInput? {
    get {
      return graphQLMap["lastSeenByMember1"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastSeenByMember1")
    }
  }

  public var lastSeenByMember2: ModelIntInput? {
    get {
      return graphQLMap["lastSeenByMember2"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastSeenByMember2")
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

public struct ModelReportedMessageFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(reporterId: ModelStringInput? = nil, and: [ModelReportedMessageFilterInput?]? = nil, or: [ModelReportedMessageFilterInput?]? = nil, not: ModelReportedMessageFilterInput? = nil) {
    graphQLMap = ["reporterID": reporterId, "and": and, "or": or, "not": not]
  }

  public var reporterId: ModelStringInput? {
    get {
      return graphQLMap["reporterID"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "reporterID")
    }
  }

  public var and: [ModelReportedMessageFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelReportedMessageFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelReportedMessageFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelReportedMessageFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelReportedMessageFilterInput? {
    get {
      return graphQLMap["not"] as! ModelReportedMessageFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, firstName: ModelStringInput? = nil, lastName: ModelStringInput? = nil, birthday: ModelStringInput? = nil, pronouns: ModelStringInput? = nil, location: ModelStringInput? = nil, adPreference: ModelStringInput? = nil, deviceFcmToken: ModelStringInput? = nil, isOnline: ModelBooleanInput? = nil, secretPin: ModelStringInput? = nil, friends: ModelStringInput? = nil, rooms: ModelStringInput? = nil, hiddenRooms: ModelStringInput? = nil, shakingCoolLinks: ModelStringInput? = nil, tokens: ModelIntInput? = nil, background: ModelIntInput? = nil, unlockedStickers: ModelIntInput? = nil, blueMode: ModelBooleanInput? = nil, and: [ModelUserFilterInput?]? = nil, or: [ModelUserFilterInput?]? = nil, not: ModelUserFilterInput? = nil) {
    graphQLMap = ["id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "deviceFCMToken": deviceFcmToken, "isOnline": isOnline, "secretPin": secretPin, "friends": friends, "rooms": rooms, "hiddenRooms": hiddenRooms, "shakingCoolLinks": shakingCoolLinks, "tokens": tokens, "background": background, "unlockedStickers": unlockedStickers, "blueMode": blueMode, "and": and, "or": or, "not": not]
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

  public var deviceFcmToken: ModelStringInput? {
    get {
      return graphQLMap["deviceFCMToken"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "deviceFCMToken")
    }
  }

  public var isOnline: ModelBooleanInput? {
    get {
      return graphQLMap["isOnline"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isOnline")
    }
  }

  public var secretPin: ModelStringInput? {
    get {
      return graphQLMap["secretPin"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "secretPin")
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

  public var hiddenRooms: ModelStringInput? {
    get {
      return graphQLMap["hiddenRooms"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hiddenRooms")
    }
  }

  public var shakingCoolLinks: ModelStringInput? {
    get {
      return graphQLMap["shakingCoolLinks"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "shakingCoolLinks")
    }
  }

  public var tokens: ModelIntInput? {
    get {
      return graphQLMap["tokens"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tokens")
    }
  }

  public var background: ModelIntInput? {
    get {
      return graphQLMap["background"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "background")
    }
  }

  public var unlockedStickers: ModelIntInput? {
    get {
      return graphQLMap["unlockedStickers"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "unlockedStickers")
    }
  }

  public var blueMode: ModelBooleanInput? {
    get {
      return graphQLMap["blueMode"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blueMode")
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

public struct ModelAdvertisementFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, category: ModelStringInput? = nil, videoName: ModelStringInput? = nil, adLink: ModelStringInput? = nil, duration: ModelFloatInput? = nil, hasAudio: ModelBooleanInput? = nil, likes: ModelIntInput? = nil, views: ModelIntInput? = nil, shares: ModelIntInput? = nil, clicks: ModelIntInput? = nil, and: [ModelAdvertisementFilterInput?]? = nil, or: [ModelAdvertisementFilterInput?]? = nil, not: ModelAdvertisementFilterInput? = nil) {
    graphQLMap = ["id": id, "category": category, "videoName": videoName, "adLink": adLink, "duration": duration, "hasAudio": hasAudio, "likes": likes, "views": views, "shares": shares, "clicks": clicks, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var category: ModelStringInput? {
    get {
      return graphQLMap["category"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var videoName: ModelStringInput? {
    get {
      return graphQLMap["videoName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "videoName")
    }
  }

  public var adLink: ModelStringInput? {
    get {
      return graphQLMap["adLink"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "adLink")
    }
  }

  public var duration: ModelFloatInput? {
    get {
      return graphQLMap["duration"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "duration")
    }
  }

  public var hasAudio: ModelBooleanInput? {
    get {
      return graphQLMap["hasAudio"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hasAudio")
    }
  }

  public var likes: ModelIntInput? {
    get {
      return graphQLMap["likes"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "likes")
    }
  }

  public var views: ModelIntInput? {
    get {
      return graphQLMap["views"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "views")
    }
  }

  public var shares: ModelIntInput? {
    get {
      return graphQLMap["shares"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "shares")
    }
  }

  public var clicks: ModelIntInput? {
    get {
      return graphQLMap["clicks"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clicks")
    }
  }

  public var and: [ModelAdvertisementFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelAdvertisementFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelAdvertisementFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelAdvertisementFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelAdvertisementFilterInput? {
    get {
      return graphQLMap["not"] as! ModelAdvertisementFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelManagementDocumentFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, documents: ModelStringInput? = nil, and: [ModelManagementDocumentFilterInput?]? = nil, or: [ModelManagementDocumentFilterInput?]? = nil, not: ModelManagementDocumentFilterInput? = nil) {
    graphQLMap = ["id": id, "documents": documents, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var documents: ModelStringInput? {
    get {
      return graphQLMap["documents"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documents")
    }
  }

  public var and: [ModelManagementDocumentFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelManagementDocumentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelManagementDocumentFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelManagementDocumentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelManagementDocumentFilterInput? {
    get {
      return graphQLMap["not"] as! ModelManagementDocumentFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateRoomMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateRoom($input: CreateRoomInput!, $condition: ModelRoomConditionInput) {\n  createRoom(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    members\n    messages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    blueMode\n    lastSeenByMember1\n    lastSeenByMember2\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("messages", type: .list(.nonNull(.object(Message.selections)))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("lastSeenByMember1", type: .scalar(Int.self)),
        GraphQLField("lastSeenByMember2", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, members: [String], messages: [Message]? = nil, blueMode: Bool, lastSeenByMember1: Int? = nil, lastSeenByMember2: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "name": name, "members": members, "messages": messages.flatMap { $0.map { $0.snapshot } }, "blueMode": blueMode, "lastSeenByMember1": lastSeenByMember1, "lastSeenByMember2": lastSeenByMember2, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var members: [String] {
        get {
          return snapshot["members"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "members")
        }
      }

      public var messages: [Message]? {
        get {
          return (snapshot["messages"] as? [Snapshot]).flatMap { $0.map { Message(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "messages")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
        }
      }

      public var lastSeenByMember1: Int? {
        get {
          return snapshot["lastSeenByMember1"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember1")
        }
      }

      public var lastSeenByMember2: Int? {
        get {
          return snapshot["lastSeenByMember2"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember2")
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

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class UpdateRoomMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateRoom($input: UpdateRoomInput!, $condition: ModelRoomConditionInput) {\n  updateRoom(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    members\n    messages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    blueMode\n    lastSeenByMember1\n    lastSeenByMember2\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("messages", type: .list(.nonNull(.object(Message.selections)))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("lastSeenByMember1", type: .scalar(Int.self)),
        GraphQLField("lastSeenByMember2", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, members: [String], messages: [Message]? = nil, blueMode: Bool, lastSeenByMember1: Int? = nil, lastSeenByMember2: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "name": name, "members": members, "messages": messages.flatMap { $0.map { $0.snapshot } }, "blueMode": blueMode, "lastSeenByMember1": lastSeenByMember1, "lastSeenByMember2": lastSeenByMember2, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var members: [String] {
        get {
          return snapshot["members"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "members")
        }
      }

      public var messages: [Message]? {
        get {
          return (snapshot["messages"] as? [Snapshot]).flatMap { $0.map { Message(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "messages")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
        }
      }

      public var lastSeenByMember1: Int? {
        get {
          return snapshot["lastSeenByMember1"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember1")
        }
      }

      public var lastSeenByMember2: Int? {
        get {
          return snapshot["lastSeenByMember2"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember2")
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

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class DeleteRoomMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteRoom($input: DeleteRoomInput!, $condition: ModelRoomConditionInput) {\n  deleteRoom(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    members\n    messages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    blueMode\n    lastSeenByMember1\n    lastSeenByMember2\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("messages", type: .list(.nonNull(.object(Message.selections)))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("lastSeenByMember1", type: .scalar(Int.self)),
        GraphQLField("lastSeenByMember2", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, members: [String], messages: [Message]? = nil, blueMode: Bool, lastSeenByMember1: Int? = nil, lastSeenByMember2: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "name": name, "members": members, "messages": messages.flatMap { $0.map { $0.snapshot } }, "blueMode": blueMode, "lastSeenByMember1": lastSeenByMember1, "lastSeenByMember2": lastSeenByMember2, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var members: [String] {
        get {
          return snapshot["members"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "members")
        }
      }

      public var messages: [Message]? {
        get {
          return (snapshot["messages"] as? [Snapshot]).flatMap { $0.map { Message(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "messages")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
        }
      }

      public var lastSeenByMember1: Int? {
        get {
          return snapshot["lastSeenByMember1"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember1")
        }
      }

      public var lastSeenByMember2: Int? {
        get {
          return snapshot["lastSeenByMember2"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember2")
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

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class CreateReportedMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateReportedMessage($input: CreateReportedMessageInput!, $condition: ModelReportedMessageConditionInput) {\n  createReportedMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    reporterID\n    reportedMessage {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    previousMessages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateReportedMessageInput
  public var condition: ModelReportedMessageConditionInput?

  public init(input: CreateReportedMessageInput, condition: ModelReportedMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createReportedMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateReportedMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createReportedMessage: CreateReportedMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createReportedMessage": createReportedMessage.flatMap { $0.snapshot }])
    }

    public var createReportedMessage: CreateReportedMessage? {
      get {
        return (snapshot["createReportedMessage"] as? Snapshot).flatMap { CreateReportedMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createReportedMessage")
      }
    }

    public struct CreateReportedMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["ReportedMessage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("reporterID", type: .nonNull(.scalar(String.self))),
        GraphQLField("reportedMessage", type: .nonNull(.object(ReportedMessage.selections))),
        GraphQLField("previousMessages", type: .list(.nonNull(.object(PreviousMessage.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, reporterId: String, reportedMessage: ReportedMessage, previousMessages: [PreviousMessage]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ReportedMessage", "id": id, "reporterID": reporterId, "reportedMessage": reportedMessage.snapshot, "previousMessages": previousMessages.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var reporterId: String {
        get {
          return snapshot["reporterID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reporterID")
        }
      }

      public var reportedMessage: ReportedMessage {
        get {
          return ReportedMessage(snapshot: snapshot["reportedMessage"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "reportedMessage")
        }
      }

      public var previousMessages: [PreviousMessage]? {
        get {
          return (snapshot["previousMessages"] as? [Snapshot]).flatMap { $0.map { PreviousMessage(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "previousMessages")
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

      public struct ReportedMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }

      public struct PreviousMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class UpdateReportedMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateReportedMessage($input: UpdateReportedMessageInput!, $condition: ModelReportedMessageConditionInput) {\n  updateReportedMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    reporterID\n    reportedMessage {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    previousMessages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateReportedMessageInput
  public var condition: ModelReportedMessageConditionInput?

  public init(input: UpdateReportedMessageInput, condition: ModelReportedMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateReportedMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateReportedMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateReportedMessage: UpdateReportedMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateReportedMessage": updateReportedMessage.flatMap { $0.snapshot }])
    }

    public var updateReportedMessage: UpdateReportedMessage? {
      get {
        return (snapshot["updateReportedMessage"] as? Snapshot).flatMap { UpdateReportedMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateReportedMessage")
      }
    }

    public struct UpdateReportedMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["ReportedMessage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("reporterID", type: .nonNull(.scalar(String.self))),
        GraphQLField("reportedMessage", type: .nonNull(.object(ReportedMessage.selections))),
        GraphQLField("previousMessages", type: .list(.nonNull(.object(PreviousMessage.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, reporterId: String, reportedMessage: ReportedMessage, previousMessages: [PreviousMessage]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ReportedMessage", "id": id, "reporterID": reporterId, "reportedMessage": reportedMessage.snapshot, "previousMessages": previousMessages.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var reporterId: String {
        get {
          return snapshot["reporterID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reporterID")
        }
      }

      public var reportedMessage: ReportedMessage {
        get {
          return ReportedMessage(snapshot: snapshot["reportedMessage"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "reportedMessage")
        }
      }

      public var previousMessages: [PreviousMessage]? {
        get {
          return (snapshot["previousMessages"] as? [Snapshot]).flatMap { $0.map { PreviousMessage(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "previousMessages")
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

      public struct ReportedMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }

      public struct PreviousMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class DeleteReportedMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteReportedMessage($input: DeleteReportedMessageInput!, $condition: ModelReportedMessageConditionInput) {\n  deleteReportedMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    reporterID\n    reportedMessage {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    previousMessages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteReportedMessageInput
  public var condition: ModelReportedMessageConditionInput?

  public init(input: DeleteReportedMessageInput, condition: ModelReportedMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteReportedMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteReportedMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteReportedMessage: DeleteReportedMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteReportedMessage": deleteReportedMessage.flatMap { $0.snapshot }])
    }

    public var deleteReportedMessage: DeleteReportedMessage? {
      get {
        return (snapshot["deleteReportedMessage"] as? Snapshot).flatMap { DeleteReportedMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteReportedMessage")
      }
    }

    public struct DeleteReportedMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["ReportedMessage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("reporterID", type: .nonNull(.scalar(String.self))),
        GraphQLField("reportedMessage", type: .nonNull(.object(ReportedMessage.selections))),
        GraphQLField("previousMessages", type: .list(.nonNull(.object(PreviousMessage.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, reporterId: String, reportedMessage: ReportedMessage, previousMessages: [PreviousMessage]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ReportedMessage", "id": id, "reporterID": reporterId, "reportedMessage": reportedMessage.snapshot, "previousMessages": previousMessages.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var reporterId: String {
        get {
          return snapshot["reporterID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reporterID")
        }
      }

      public var reportedMessage: ReportedMessage {
        get {
          return ReportedMessage(snapshot: snapshot["reportedMessage"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "reportedMessage")
        }
      }

      public var previousMessages: [PreviousMessage]? {
        get {
          return (snapshot["previousMessages"] as? [Snapshot]).flatMap { $0.map { PreviousMessage(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "previousMessages")
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

      public struct ReportedMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }

      public struct PreviousMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUser($input: CreateUserInput!, $condition: ModelUserConditionInput) {\n  createUser(input: $input, condition: $condition) {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    deviceFCMToken\n    isOnline\n    secretPin\n    friends\n    rooms\n    hiddenRooms\n    smileNotes {\n      __typename\n      id\n      message {\n        __typename\n        id\n        senderName\n        senderID\n        body\n        creationDate\n        attachmentPath\n        stickerNumber\n      }\n      favorite\n    }\n    shakingCoolLinks\n    tokens\n    background\n    unlockedStickers\n    blueMode\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("deviceFCMToken", type: .nonNull(.scalar(String.self))),
        GraphQLField("isOnline", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("secretPin", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("hiddenRooms", type: .list(.scalar(String.self))),
        GraphQLField("smileNotes", type: .list(.object(SmileNote.selections))),
        GraphQLField("shakingCoolLinks", type: .list(.scalar(String.self))),
        GraphQLField("tokens", type: .nonNull(.scalar(Int.self))),
        GraphQLField("background", type: .nonNull(.scalar(Int.self))),
        GraphQLField("unlockedStickers", type: .list(.scalar(Int.self))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, deviceFcmToken: String, isOnline: Bool, secretPin: String, friends: [String?]? = nil, rooms: [String?]? = nil, hiddenRooms: [String?]? = nil, smileNotes: [SmileNote?]? = nil, shakingCoolLinks: [String?]? = nil, tokens: Int, background: Int, unlockedStickers: [Int?]? = nil, blueMode: Bool, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "deviceFCMToken": deviceFcmToken, "isOnline": isOnline, "secretPin": secretPin, "friends": friends, "rooms": rooms, "hiddenRooms": hiddenRooms, "smileNotes": smileNotes.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "shakingCoolLinks": shakingCoolLinks, "tokens": tokens, "background": background, "unlockedStickers": unlockedStickers, "blueMode": blueMode, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var deviceFcmToken: String {
        get {
          return snapshot["deviceFCMToken"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deviceFCMToken")
        }
      }

      public var isOnline: Bool {
        get {
          return snapshot["isOnline"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isOnline")
        }
      }

      public var secretPin: String {
        get {
          return snapshot["secretPin"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "secretPin")
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

      public var hiddenRooms: [String?]? {
        get {
          return snapshot["hiddenRooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "hiddenRooms")
        }
      }

      public var smileNotes: [SmileNote?]? {
        get {
          return (snapshot["smileNotes"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { SmileNote(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "smileNotes")
        }
      }

      public var shakingCoolLinks: [String?]? {
        get {
          return snapshot["shakingCoolLinks"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "shakingCoolLinks")
        }
      }

      public var tokens: Int {
        get {
          return snapshot["tokens"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "tokens")
        }
      }

      public var background: Int {
        get {
          return snapshot["background"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "background")
        }
      }

      public var unlockedStickers: [Int?]? {
        get {
          return snapshot["unlockedStickers"] as? [Int?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "unlockedStickers")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
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

      public struct SmileNote: GraphQLSelectionSet {
        public static let possibleTypes = ["SmileNote"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("message", type: .nonNull(.object(Message.selections))),
          GraphQLField("favorite", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, message: Message, favorite: Bool) {
          self.init(snapshot: ["__typename": "SmileNote", "id": id, "message": message.snapshot, "favorite": favorite])
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

        public var message: Message {
          get {
            return Message(snapshot: snapshot["message"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "message")
          }
        }

        public var favorite: Bool {
          get {
            return snapshot["favorite"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "favorite")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
            GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
            GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
            GraphQLField("attachmentPath", type: .scalar(String.self)),
            GraphQLField("stickerNumber", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

          public var attachmentPath: String? {
            get {
              return snapshot["attachmentPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "attachmentPath")
            }
          }

          public var stickerNumber: Int? {
            get {
              return snapshot["stickerNumber"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "stickerNumber")
            }
          }
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUser($input: UpdateUserInput!, $condition: ModelUserConditionInput) {\n  updateUser(input: $input, condition: $condition) {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    deviceFCMToken\n    isOnline\n    secretPin\n    friends\n    rooms\n    hiddenRooms\n    smileNotes {\n      __typename\n      id\n      message {\n        __typename\n        id\n        senderName\n        senderID\n        body\n        creationDate\n        attachmentPath\n        stickerNumber\n      }\n      favorite\n    }\n    shakingCoolLinks\n    tokens\n    background\n    unlockedStickers\n    blueMode\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("deviceFCMToken", type: .nonNull(.scalar(String.self))),
        GraphQLField("isOnline", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("secretPin", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("hiddenRooms", type: .list(.scalar(String.self))),
        GraphQLField("smileNotes", type: .list(.object(SmileNote.selections))),
        GraphQLField("shakingCoolLinks", type: .list(.scalar(String.self))),
        GraphQLField("tokens", type: .nonNull(.scalar(Int.self))),
        GraphQLField("background", type: .nonNull(.scalar(Int.self))),
        GraphQLField("unlockedStickers", type: .list(.scalar(Int.self))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, deviceFcmToken: String, isOnline: Bool, secretPin: String, friends: [String?]? = nil, rooms: [String?]? = nil, hiddenRooms: [String?]? = nil, smileNotes: [SmileNote?]? = nil, shakingCoolLinks: [String?]? = nil, tokens: Int, background: Int, unlockedStickers: [Int?]? = nil, blueMode: Bool, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "deviceFCMToken": deviceFcmToken, "isOnline": isOnline, "secretPin": secretPin, "friends": friends, "rooms": rooms, "hiddenRooms": hiddenRooms, "smileNotes": smileNotes.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "shakingCoolLinks": shakingCoolLinks, "tokens": tokens, "background": background, "unlockedStickers": unlockedStickers, "blueMode": blueMode, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var deviceFcmToken: String {
        get {
          return snapshot["deviceFCMToken"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deviceFCMToken")
        }
      }

      public var isOnline: Bool {
        get {
          return snapshot["isOnline"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isOnline")
        }
      }

      public var secretPin: String {
        get {
          return snapshot["secretPin"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "secretPin")
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

      public var hiddenRooms: [String?]? {
        get {
          return snapshot["hiddenRooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "hiddenRooms")
        }
      }

      public var smileNotes: [SmileNote?]? {
        get {
          return (snapshot["smileNotes"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { SmileNote(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "smileNotes")
        }
      }

      public var shakingCoolLinks: [String?]? {
        get {
          return snapshot["shakingCoolLinks"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "shakingCoolLinks")
        }
      }

      public var tokens: Int {
        get {
          return snapshot["tokens"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "tokens")
        }
      }

      public var background: Int {
        get {
          return snapshot["background"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "background")
        }
      }

      public var unlockedStickers: [Int?]? {
        get {
          return snapshot["unlockedStickers"] as? [Int?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "unlockedStickers")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
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

      public struct SmileNote: GraphQLSelectionSet {
        public static let possibleTypes = ["SmileNote"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("message", type: .nonNull(.object(Message.selections))),
          GraphQLField("favorite", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, message: Message, favorite: Bool) {
          self.init(snapshot: ["__typename": "SmileNote", "id": id, "message": message.snapshot, "favorite": favorite])
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

        public var message: Message {
          get {
            return Message(snapshot: snapshot["message"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "message")
          }
        }

        public var favorite: Bool {
          get {
            return snapshot["favorite"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "favorite")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
            GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
            GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
            GraphQLField("attachmentPath", type: .scalar(String.self)),
            GraphQLField("stickerNumber", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

          public var attachmentPath: String? {
            get {
              return snapshot["attachmentPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "attachmentPath")
            }
          }

          public var stickerNumber: Int? {
            get {
              return snapshot["stickerNumber"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "stickerNumber")
            }
          }
        }
      }
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser($input: DeleteUserInput!, $condition: ModelUserConditionInput) {\n  deleteUser(input: $input, condition: $condition) {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    deviceFCMToken\n    isOnline\n    secretPin\n    friends\n    rooms\n    hiddenRooms\n    smileNotes {\n      __typename\n      id\n      message {\n        __typename\n        id\n        senderName\n        senderID\n        body\n        creationDate\n        attachmentPath\n        stickerNumber\n      }\n      favorite\n    }\n    shakingCoolLinks\n    tokens\n    background\n    unlockedStickers\n    blueMode\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("deviceFCMToken", type: .nonNull(.scalar(String.self))),
        GraphQLField("isOnline", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("secretPin", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("hiddenRooms", type: .list(.scalar(String.self))),
        GraphQLField("smileNotes", type: .list(.object(SmileNote.selections))),
        GraphQLField("shakingCoolLinks", type: .list(.scalar(String.self))),
        GraphQLField("tokens", type: .nonNull(.scalar(Int.self))),
        GraphQLField("background", type: .nonNull(.scalar(Int.self))),
        GraphQLField("unlockedStickers", type: .list(.scalar(Int.self))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, deviceFcmToken: String, isOnline: Bool, secretPin: String, friends: [String?]? = nil, rooms: [String?]? = nil, hiddenRooms: [String?]? = nil, smileNotes: [SmileNote?]? = nil, shakingCoolLinks: [String?]? = nil, tokens: Int, background: Int, unlockedStickers: [Int?]? = nil, blueMode: Bool, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "deviceFCMToken": deviceFcmToken, "isOnline": isOnline, "secretPin": secretPin, "friends": friends, "rooms": rooms, "hiddenRooms": hiddenRooms, "smileNotes": smileNotes.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "shakingCoolLinks": shakingCoolLinks, "tokens": tokens, "background": background, "unlockedStickers": unlockedStickers, "blueMode": blueMode, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var deviceFcmToken: String {
        get {
          return snapshot["deviceFCMToken"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deviceFCMToken")
        }
      }

      public var isOnline: Bool {
        get {
          return snapshot["isOnline"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isOnline")
        }
      }

      public var secretPin: String {
        get {
          return snapshot["secretPin"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "secretPin")
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

      public var hiddenRooms: [String?]? {
        get {
          return snapshot["hiddenRooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "hiddenRooms")
        }
      }

      public var smileNotes: [SmileNote?]? {
        get {
          return (snapshot["smileNotes"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { SmileNote(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "smileNotes")
        }
      }

      public var shakingCoolLinks: [String?]? {
        get {
          return snapshot["shakingCoolLinks"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "shakingCoolLinks")
        }
      }

      public var tokens: Int {
        get {
          return snapshot["tokens"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "tokens")
        }
      }

      public var background: Int {
        get {
          return snapshot["background"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "background")
        }
      }

      public var unlockedStickers: [Int?]? {
        get {
          return snapshot["unlockedStickers"] as? [Int?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "unlockedStickers")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
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

      public struct SmileNote: GraphQLSelectionSet {
        public static let possibleTypes = ["SmileNote"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("message", type: .nonNull(.object(Message.selections))),
          GraphQLField("favorite", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, message: Message, favorite: Bool) {
          self.init(snapshot: ["__typename": "SmileNote", "id": id, "message": message.snapshot, "favorite": favorite])
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

        public var message: Message {
          get {
            return Message(snapshot: snapshot["message"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "message")
          }
        }

        public var favorite: Bool {
          get {
            return snapshot["favorite"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "favorite")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
            GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
            GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
            GraphQLField("attachmentPath", type: .scalar(String.self)),
            GraphQLField("stickerNumber", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

          public var attachmentPath: String? {
            get {
              return snapshot["attachmentPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "attachmentPath")
            }
          }

          public var stickerNumber: Int? {
            get {
              return snapshot["stickerNumber"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "stickerNumber")
            }
          }
        }
      }
    }
  }
}

public final class CreateAdvertisementMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateAdvertisement($input: CreateAdvertisementInput!, $condition: ModelAdvertisementConditionInput) {\n  createAdvertisement(input: $input, condition: $condition) {\n    __typename\n    id\n    category\n    videoName\n    adLink\n    duration\n    hasAudio\n    likes\n    views\n    shares\n    clicks\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateAdvertisementInput
  public var condition: ModelAdvertisementConditionInput?

  public init(input: CreateAdvertisementInput, condition: ModelAdvertisementConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createAdvertisement", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateAdvertisement.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createAdvertisement: CreateAdvertisement? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createAdvertisement": createAdvertisement.flatMap { $0.snapshot }])
    }

    public var createAdvertisement: CreateAdvertisement? {
      get {
        return (snapshot["createAdvertisement"] as? Snapshot).flatMap { CreateAdvertisement(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createAdvertisement")
      }
    }

    public struct CreateAdvertisement: GraphQLSelectionSet {
      public static let possibleTypes = ["Advertisement"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("videoName", type: .nonNull(.scalar(String.self))),
        GraphQLField("adLink", type: .nonNull(.scalar(String.self))),
        GraphQLField("duration", type: .nonNull(.scalar(Double.self))),
        GraphQLField("hasAudio", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("likes", type: .nonNull(.scalar(Int.self))),
        GraphQLField("views", type: .nonNull(.scalar(Int.self))),
        GraphQLField("shares", type: .nonNull(.scalar(Int.self))),
        GraphQLField("clicks", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, category: String, videoName: String, adLink: String, duration: Double, hasAudio: Bool, likes: Int, views: Int, shares: Int, clicks: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Advertisement", "id": id, "category": category, "videoName": videoName, "adLink": adLink, "duration": duration, "hasAudio": hasAudio, "likes": likes, "views": views, "shares": shares, "clicks": clicks, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var videoName: String {
        get {
          return snapshot["videoName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "videoName")
        }
      }

      public var adLink: String {
        get {
          return snapshot["adLink"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adLink")
        }
      }

      public var duration: Double {
        get {
          return snapshot["duration"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "duration")
        }
      }

      public var hasAudio: Bool {
        get {
          return snapshot["hasAudio"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "hasAudio")
        }
      }

      public var likes: Int {
        get {
          return snapshot["likes"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "likes")
        }
      }

      public var views: Int {
        get {
          return snapshot["views"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "views")
        }
      }

      public var shares: Int {
        get {
          return snapshot["shares"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "shares")
        }
      }

      public var clicks: Int {
        get {
          return snapshot["clicks"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "clicks")
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

public final class UpdateAdvertisementMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateAdvertisement($input: UpdateAdvertisementInput!, $condition: ModelAdvertisementConditionInput) {\n  updateAdvertisement(input: $input, condition: $condition) {\n    __typename\n    id\n    category\n    videoName\n    adLink\n    duration\n    hasAudio\n    likes\n    views\n    shares\n    clicks\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateAdvertisementInput
  public var condition: ModelAdvertisementConditionInput?

  public init(input: UpdateAdvertisementInput, condition: ModelAdvertisementConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateAdvertisement", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateAdvertisement.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateAdvertisement: UpdateAdvertisement? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateAdvertisement": updateAdvertisement.flatMap { $0.snapshot }])
    }

    public var updateAdvertisement: UpdateAdvertisement? {
      get {
        return (snapshot["updateAdvertisement"] as? Snapshot).flatMap { UpdateAdvertisement(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateAdvertisement")
      }
    }

    public struct UpdateAdvertisement: GraphQLSelectionSet {
      public static let possibleTypes = ["Advertisement"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("videoName", type: .nonNull(.scalar(String.self))),
        GraphQLField("adLink", type: .nonNull(.scalar(String.self))),
        GraphQLField("duration", type: .nonNull(.scalar(Double.self))),
        GraphQLField("hasAudio", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("likes", type: .nonNull(.scalar(Int.self))),
        GraphQLField("views", type: .nonNull(.scalar(Int.self))),
        GraphQLField("shares", type: .nonNull(.scalar(Int.self))),
        GraphQLField("clicks", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, category: String, videoName: String, adLink: String, duration: Double, hasAudio: Bool, likes: Int, views: Int, shares: Int, clicks: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Advertisement", "id": id, "category": category, "videoName": videoName, "adLink": adLink, "duration": duration, "hasAudio": hasAudio, "likes": likes, "views": views, "shares": shares, "clicks": clicks, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var videoName: String {
        get {
          return snapshot["videoName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "videoName")
        }
      }

      public var adLink: String {
        get {
          return snapshot["adLink"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adLink")
        }
      }

      public var duration: Double {
        get {
          return snapshot["duration"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "duration")
        }
      }

      public var hasAudio: Bool {
        get {
          return snapshot["hasAudio"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "hasAudio")
        }
      }

      public var likes: Int {
        get {
          return snapshot["likes"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "likes")
        }
      }

      public var views: Int {
        get {
          return snapshot["views"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "views")
        }
      }

      public var shares: Int {
        get {
          return snapshot["shares"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "shares")
        }
      }

      public var clicks: Int {
        get {
          return snapshot["clicks"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "clicks")
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

public final class DeleteAdvertisementMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteAdvertisement($input: DeleteAdvertisementInput!, $condition: ModelAdvertisementConditionInput) {\n  deleteAdvertisement(input: $input, condition: $condition) {\n    __typename\n    id\n    category\n    videoName\n    adLink\n    duration\n    hasAudio\n    likes\n    views\n    shares\n    clicks\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteAdvertisementInput
  public var condition: ModelAdvertisementConditionInput?

  public init(input: DeleteAdvertisementInput, condition: ModelAdvertisementConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteAdvertisement", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteAdvertisement.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteAdvertisement: DeleteAdvertisement? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteAdvertisement": deleteAdvertisement.flatMap { $0.snapshot }])
    }

    public var deleteAdvertisement: DeleteAdvertisement? {
      get {
        return (snapshot["deleteAdvertisement"] as? Snapshot).flatMap { DeleteAdvertisement(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteAdvertisement")
      }
    }

    public struct DeleteAdvertisement: GraphQLSelectionSet {
      public static let possibleTypes = ["Advertisement"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("videoName", type: .nonNull(.scalar(String.self))),
        GraphQLField("adLink", type: .nonNull(.scalar(String.self))),
        GraphQLField("duration", type: .nonNull(.scalar(Double.self))),
        GraphQLField("hasAudio", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("likes", type: .nonNull(.scalar(Int.self))),
        GraphQLField("views", type: .nonNull(.scalar(Int.self))),
        GraphQLField("shares", type: .nonNull(.scalar(Int.self))),
        GraphQLField("clicks", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, category: String, videoName: String, adLink: String, duration: Double, hasAudio: Bool, likes: Int, views: Int, shares: Int, clicks: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Advertisement", "id": id, "category": category, "videoName": videoName, "adLink": adLink, "duration": duration, "hasAudio": hasAudio, "likes": likes, "views": views, "shares": shares, "clicks": clicks, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var videoName: String {
        get {
          return snapshot["videoName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "videoName")
        }
      }

      public var adLink: String {
        get {
          return snapshot["adLink"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adLink")
        }
      }

      public var duration: Double {
        get {
          return snapshot["duration"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "duration")
        }
      }

      public var hasAudio: Bool {
        get {
          return snapshot["hasAudio"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "hasAudio")
        }
      }

      public var likes: Int {
        get {
          return snapshot["likes"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "likes")
        }
      }

      public var views: Int {
        get {
          return snapshot["views"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "views")
        }
      }

      public var shares: Int {
        get {
          return snapshot["shares"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "shares")
        }
      }

      public var clicks: Int {
        get {
          return snapshot["clicks"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "clicks")
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

public final class CreateManagementDocumentMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateManagementDocument($input: CreateManagementDocumentInput!, $condition: ModelManagementDocumentConditionInput) {\n  createManagementDocument(input: $input, condition: $condition) {\n    __typename\n    id\n    documents\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateManagementDocumentInput
  public var condition: ModelManagementDocumentConditionInput?

  public init(input: CreateManagementDocumentInput, condition: ModelManagementDocumentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createManagementDocument", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateManagementDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createManagementDocument: CreateManagementDocument? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createManagementDocument": createManagementDocument.flatMap { $0.snapshot }])
    }

    public var createManagementDocument: CreateManagementDocument? {
      get {
        return (snapshot["createManagementDocument"] as? Snapshot).flatMap { CreateManagementDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createManagementDocument")
      }
    }

    public struct CreateManagementDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["ManagementDocument"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("documents", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, documents: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ManagementDocument", "id": id, "documents": documents, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var documents: [String?]? {
        get {
          return snapshot["documents"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "documents")
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

public final class UpdateManagementDocumentMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateManagementDocument($input: UpdateManagementDocumentInput!, $condition: ModelManagementDocumentConditionInput) {\n  updateManagementDocument(input: $input, condition: $condition) {\n    __typename\n    id\n    documents\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateManagementDocumentInput
  public var condition: ModelManagementDocumentConditionInput?

  public init(input: UpdateManagementDocumentInput, condition: ModelManagementDocumentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateManagementDocument", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateManagementDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateManagementDocument: UpdateManagementDocument? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateManagementDocument": updateManagementDocument.flatMap { $0.snapshot }])
    }

    public var updateManagementDocument: UpdateManagementDocument? {
      get {
        return (snapshot["updateManagementDocument"] as? Snapshot).flatMap { UpdateManagementDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateManagementDocument")
      }
    }

    public struct UpdateManagementDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["ManagementDocument"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("documents", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, documents: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ManagementDocument", "id": id, "documents": documents, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var documents: [String?]? {
        get {
          return snapshot["documents"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "documents")
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

public final class DeleteManagementDocumentMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteManagementDocument($input: DeleteManagementDocumentInput!, $condition: ModelManagementDocumentConditionInput) {\n  deleteManagementDocument(input: $input, condition: $condition) {\n    __typename\n    id\n    documents\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteManagementDocumentInput
  public var condition: ModelManagementDocumentConditionInput?

  public init(input: DeleteManagementDocumentInput, condition: ModelManagementDocumentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteManagementDocument", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteManagementDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteManagementDocument: DeleteManagementDocument? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteManagementDocument": deleteManagementDocument.flatMap { $0.snapshot }])
    }

    public var deleteManagementDocument: DeleteManagementDocument? {
      get {
        return (snapshot["deleteManagementDocument"] as? Snapshot).flatMap { DeleteManagementDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteManagementDocument")
      }
    }

    public struct DeleteManagementDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["ManagementDocument"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("documents", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, documents: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ManagementDocument", "id": id, "documents": documents, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var documents: [String?]? {
        get {
          return snapshot["documents"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "documents")
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
    "query GetRoom($id: ID!) {\n  getRoom(id: $id) {\n    __typename\n    id\n    name\n    members\n    messages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    blueMode\n    lastSeenByMember1\n    lastSeenByMember2\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("messages", type: .list(.nonNull(.object(Message.selections)))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("lastSeenByMember1", type: .scalar(Int.self)),
        GraphQLField("lastSeenByMember2", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, members: [String], messages: [Message]? = nil, blueMode: Bool, lastSeenByMember1: Int? = nil, lastSeenByMember2: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "name": name, "members": members, "messages": messages.flatMap { $0.map { $0.snapshot } }, "blueMode": blueMode, "lastSeenByMember1": lastSeenByMember1, "lastSeenByMember2": lastSeenByMember2, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var members: [String] {
        get {
          return snapshot["members"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "members")
        }
      }

      public var messages: [Message]? {
        get {
          return (snapshot["messages"] as? [Snapshot]).flatMap { $0.map { Message(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "messages")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
        }
      }

      public var lastSeenByMember1: Int? {
        get {
          return snapshot["lastSeenByMember1"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember1")
        }
      }

      public var lastSeenByMember2: Int? {
        get {
          return snapshot["lastSeenByMember2"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember2")
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

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class ListRoomsQuery: GraphQLQuery {
  public static let operationString =
    "query ListRooms($filter: ModelRoomFilterInput, $limit: Int, $nextToken: String) {\n  listRooms(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      members\n      messages {\n        __typename\n        id\n        senderName\n        senderID\n        body\n        creationDate\n        attachmentPath\n        stickerNumber\n      }\n      blueMode\n      lastSeenByMember1\n      lastSeenByMember2\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

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
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("messages", type: .list(.nonNull(.object(Message.selections)))),
          GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("lastSeenByMember1", type: .scalar(Int.self)),
          GraphQLField("lastSeenByMember2", type: .scalar(Int.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, members: [String], messages: [Message]? = nil, blueMode: Bool, lastSeenByMember1: Int? = nil, lastSeenByMember2: Int? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Room", "id": id, "name": name, "members": members, "messages": messages.flatMap { $0.map { $0.snapshot } }, "blueMode": blueMode, "lastSeenByMember1": lastSeenByMember1, "lastSeenByMember2": lastSeenByMember2, "createdAt": createdAt, "updatedAt": updatedAt])
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

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var members: [String] {
          get {
            return snapshot["members"]! as! [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "members")
          }
        }

        public var messages: [Message]? {
          get {
            return (snapshot["messages"] as? [Snapshot]).flatMap { $0.map { Message(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "messages")
          }
        }

        public var blueMode: Bool {
          get {
            return snapshot["blueMode"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "blueMode")
          }
        }

        public var lastSeenByMember1: Int? {
          get {
            return snapshot["lastSeenByMember1"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastSeenByMember1")
          }
        }

        public var lastSeenByMember2: Int? {
          get {
            return snapshot["lastSeenByMember2"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastSeenByMember2")
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

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
            GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
            GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
            GraphQLField("attachmentPath", type: .scalar(String.self)),
            GraphQLField("stickerNumber", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

          public var attachmentPath: String? {
            get {
              return snapshot["attachmentPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "attachmentPath")
            }
          }

          public var stickerNumber: Int? {
            get {
              return snapshot["stickerNumber"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "stickerNumber")
            }
          }
        }
      }
    }
  }
}

public final class GetReportedMessageQuery: GraphQLQuery {
  public static let operationString =
    "query GetReportedMessage($id: ID!) {\n  getReportedMessage(id: $id) {\n    __typename\n    id\n    reporterID\n    reportedMessage {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    previousMessages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    createdAt\n    updatedAt\n  }\n}"

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
      GraphQLField("getReportedMessage", arguments: ["id": GraphQLVariable("id")], type: .object(GetReportedMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getReportedMessage: GetReportedMessage? = nil) {
      self.init(snapshot: ["__typename": "Query", "getReportedMessage": getReportedMessage.flatMap { $0.snapshot }])
    }

    public var getReportedMessage: GetReportedMessage? {
      get {
        return (snapshot["getReportedMessage"] as? Snapshot).flatMap { GetReportedMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getReportedMessage")
      }
    }

    public struct GetReportedMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["ReportedMessage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("reporterID", type: .nonNull(.scalar(String.self))),
        GraphQLField("reportedMessage", type: .nonNull(.object(ReportedMessage.selections))),
        GraphQLField("previousMessages", type: .list(.nonNull(.object(PreviousMessage.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, reporterId: String, reportedMessage: ReportedMessage, previousMessages: [PreviousMessage]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ReportedMessage", "id": id, "reporterID": reporterId, "reportedMessage": reportedMessage.snapshot, "previousMessages": previousMessages.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var reporterId: String {
        get {
          return snapshot["reporterID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reporterID")
        }
      }

      public var reportedMessage: ReportedMessage {
        get {
          return ReportedMessage(snapshot: snapshot["reportedMessage"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "reportedMessage")
        }
      }

      public var previousMessages: [PreviousMessage]? {
        get {
          return (snapshot["previousMessages"] as? [Snapshot]).flatMap { $0.map { PreviousMessage(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "previousMessages")
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

      public struct ReportedMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }

      public struct PreviousMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class ListReportedMessagesQuery: GraphQLQuery {
  public static let operationString =
    "query ListReportedMessages($filter: ModelReportedMessageFilterInput, $limit: Int, $nextToken: String) {\n  listReportedMessages(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      reporterID\n      reportedMessage {\n        __typename\n        id\n        senderName\n        senderID\n        body\n        creationDate\n        attachmentPath\n        stickerNumber\n      }\n      previousMessages {\n        __typename\n        id\n        senderName\n        senderID\n        body\n        creationDate\n        attachmentPath\n        stickerNumber\n      }\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelReportedMessageFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelReportedMessageFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
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
      GraphQLField("listReportedMessages", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListReportedMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listReportedMessages: ListReportedMessage? = nil) {
      self.init(snapshot: ["__typename": "Query", "listReportedMessages": listReportedMessages.flatMap { $0.snapshot }])
    }

    public var listReportedMessages: ListReportedMessage? {
      get {
        return (snapshot["listReportedMessages"] as? Snapshot).flatMap { ListReportedMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listReportedMessages")
      }
    }

    public struct ListReportedMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelReportedMessageConnection"]

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
        self.init(snapshot: ["__typename": "ModelReportedMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
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
        public static let possibleTypes = ["ReportedMessage"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("reporterID", type: .nonNull(.scalar(String.self))),
          GraphQLField("reportedMessage", type: .nonNull(.object(ReportedMessage.selections))),
          GraphQLField("previousMessages", type: .list(.nonNull(.object(PreviousMessage.selections)))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, reporterId: String, reportedMessage: ReportedMessage, previousMessages: [PreviousMessage]? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "ReportedMessage", "id": id, "reporterID": reporterId, "reportedMessage": reportedMessage.snapshot, "previousMessages": previousMessages.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
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

        public var reporterId: String {
          get {
            return snapshot["reporterID"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "reporterID")
          }
        }

        public var reportedMessage: ReportedMessage {
          get {
            return ReportedMessage(snapshot: snapshot["reportedMessage"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "reportedMessage")
          }
        }

        public var previousMessages: [PreviousMessage]? {
          get {
            return (snapshot["previousMessages"] as? [Snapshot]).flatMap { $0.map { PreviousMessage(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "previousMessages")
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

        public struct ReportedMessage: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
            GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
            GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
            GraphQLField("attachmentPath", type: .scalar(String.self)),
            GraphQLField("stickerNumber", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

          public var attachmentPath: String? {
            get {
              return snapshot["attachmentPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "attachmentPath")
            }
          }

          public var stickerNumber: Int? {
            get {
              return snapshot["stickerNumber"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "stickerNumber")
            }
          }
        }

        public struct PreviousMessage: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
            GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
            GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
            GraphQLField("attachmentPath", type: .scalar(String.self)),
            GraphQLField("stickerNumber", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

          public var attachmentPath: String? {
            get {
              return snapshot["attachmentPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "attachmentPath")
            }
          }

          public var stickerNumber: Int? {
            get {
              return snapshot["stickerNumber"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "stickerNumber")
            }
          }
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser($id: ID!) {\n  getUser(id: $id) {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    deviceFCMToken\n    isOnline\n    secretPin\n    friends\n    rooms\n    hiddenRooms\n    smileNotes {\n      __typename\n      id\n      message {\n        __typename\n        id\n        senderName\n        senderID\n        body\n        creationDate\n        attachmentPath\n        stickerNumber\n      }\n      favorite\n    }\n    shakingCoolLinks\n    tokens\n    background\n    unlockedStickers\n    blueMode\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("deviceFCMToken", type: .nonNull(.scalar(String.self))),
        GraphQLField("isOnline", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("secretPin", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("hiddenRooms", type: .list(.scalar(String.self))),
        GraphQLField("smileNotes", type: .list(.object(SmileNote.selections))),
        GraphQLField("shakingCoolLinks", type: .list(.scalar(String.self))),
        GraphQLField("tokens", type: .nonNull(.scalar(Int.self))),
        GraphQLField("background", type: .nonNull(.scalar(Int.self))),
        GraphQLField("unlockedStickers", type: .list(.scalar(Int.self))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, deviceFcmToken: String, isOnline: Bool, secretPin: String, friends: [String?]? = nil, rooms: [String?]? = nil, hiddenRooms: [String?]? = nil, smileNotes: [SmileNote?]? = nil, shakingCoolLinks: [String?]? = nil, tokens: Int, background: Int, unlockedStickers: [Int?]? = nil, blueMode: Bool, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "deviceFCMToken": deviceFcmToken, "isOnline": isOnline, "secretPin": secretPin, "friends": friends, "rooms": rooms, "hiddenRooms": hiddenRooms, "smileNotes": smileNotes.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "shakingCoolLinks": shakingCoolLinks, "tokens": tokens, "background": background, "unlockedStickers": unlockedStickers, "blueMode": blueMode, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var deviceFcmToken: String {
        get {
          return snapshot["deviceFCMToken"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deviceFCMToken")
        }
      }

      public var isOnline: Bool {
        get {
          return snapshot["isOnline"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isOnline")
        }
      }

      public var secretPin: String {
        get {
          return snapshot["secretPin"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "secretPin")
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

      public var hiddenRooms: [String?]? {
        get {
          return snapshot["hiddenRooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "hiddenRooms")
        }
      }

      public var smileNotes: [SmileNote?]? {
        get {
          return (snapshot["smileNotes"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { SmileNote(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "smileNotes")
        }
      }

      public var shakingCoolLinks: [String?]? {
        get {
          return snapshot["shakingCoolLinks"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "shakingCoolLinks")
        }
      }

      public var tokens: Int {
        get {
          return snapshot["tokens"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "tokens")
        }
      }

      public var background: Int {
        get {
          return snapshot["background"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "background")
        }
      }

      public var unlockedStickers: [Int?]? {
        get {
          return snapshot["unlockedStickers"] as? [Int?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "unlockedStickers")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
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

      public struct SmileNote: GraphQLSelectionSet {
        public static let possibleTypes = ["SmileNote"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("message", type: .nonNull(.object(Message.selections))),
          GraphQLField("favorite", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, message: Message, favorite: Bool) {
          self.init(snapshot: ["__typename": "SmileNote", "id": id, "message": message.snapshot, "favorite": favorite])
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

        public var message: Message {
          get {
            return Message(snapshot: snapshot["message"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "message")
          }
        }

        public var favorite: Bool {
          get {
            return snapshot["favorite"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "favorite")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
            GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
            GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
            GraphQLField("attachmentPath", type: .scalar(String.self)),
            GraphQLField("stickerNumber", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

          public var attachmentPath: String? {
            get {
              return snapshot["attachmentPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "attachmentPath")
            }
          }

          public var stickerNumber: Int? {
            get {
              return snapshot["stickerNumber"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "stickerNumber")
            }
          }
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($filter: ModelUserFilterInput, $limit: Int, $nextToken: String) {\n  listUsers(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      firstName\n      lastName\n      birthday\n      pronouns\n      location\n      adPreference\n      deviceFCMToken\n      isOnline\n      secretPin\n      friends\n      rooms\n      hiddenRooms\n      smileNotes {\n        __typename\n        id\n        favorite\n      }\n      shakingCoolLinks\n      tokens\n      background\n      unlockedStickers\n      blueMode\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

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
          GraphQLField("deviceFCMToken", type: .nonNull(.scalar(String.self))),
          GraphQLField("isOnline", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("secretPin", type: .nonNull(.scalar(String.self))),
          GraphQLField("friends", type: .list(.scalar(String.self))),
          GraphQLField("rooms", type: .list(.scalar(String.self))),
          GraphQLField("hiddenRooms", type: .list(.scalar(String.self))),
          GraphQLField("smileNotes", type: .list(.object(SmileNote.selections))),
          GraphQLField("shakingCoolLinks", type: .list(.scalar(String.self))),
          GraphQLField("tokens", type: .nonNull(.scalar(Int.self))),
          GraphQLField("background", type: .nonNull(.scalar(Int.self))),
          GraphQLField("unlockedStickers", type: .list(.scalar(Int.self))),
          GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, deviceFcmToken: String, isOnline: Bool, secretPin: String, friends: [String?]? = nil, rooms: [String?]? = nil, hiddenRooms: [String?]? = nil, smileNotes: [SmileNote?]? = nil, shakingCoolLinks: [String?]? = nil, tokens: Int, background: Int, unlockedStickers: [Int?]? = nil, blueMode: Bool, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "deviceFCMToken": deviceFcmToken, "isOnline": isOnline, "secretPin": secretPin, "friends": friends, "rooms": rooms, "hiddenRooms": hiddenRooms, "smileNotes": smileNotes.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "shakingCoolLinks": shakingCoolLinks, "tokens": tokens, "background": background, "unlockedStickers": unlockedStickers, "blueMode": blueMode, "createdAt": createdAt, "updatedAt": updatedAt])
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

        public var deviceFcmToken: String {
          get {
            return snapshot["deviceFCMToken"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "deviceFCMToken")
          }
        }

        public var isOnline: Bool {
          get {
            return snapshot["isOnline"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isOnline")
          }
        }

        public var secretPin: String {
          get {
            return snapshot["secretPin"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "secretPin")
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

        public var hiddenRooms: [String?]? {
          get {
            return snapshot["hiddenRooms"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "hiddenRooms")
          }
        }

        public var smileNotes: [SmileNote?]? {
          get {
            return (snapshot["smileNotes"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { SmileNote(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "smileNotes")
          }
        }

        public var shakingCoolLinks: [String?]? {
          get {
            return snapshot["shakingCoolLinks"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "shakingCoolLinks")
          }
        }

        public var tokens: Int {
          get {
            return snapshot["tokens"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "tokens")
          }
        }

        public var background: Int {
          get {
            return snapshot["background"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "background")
          }
        }

        public var unlockedStickers: [Int?]? {
          get {
            return snapshot["unlockedStickers"] as? [Int?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "unlockedStickers")
          }
        }

        public var blueMode: Bool {
          get {
            return snapshot["blueMode"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "blueMode")
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

        public struct SmileNote: GraphQLSelectionSet {
          public static let possibleTypes = ["SmileNote"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("favorite", type: .nonNull(.scalar(Bool.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, favorite: Bool) {
            self.init(snapshot: ["__typename": "SmileNote", "id": id, "favorite": favorite])
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

          public var favorite: Bool {
            get {
              return snapshot["favorite"]! as! Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "favorite")
            }
          }
        }
      }
    }
  }
}

public final class GetAdvertisementQuery: GraphQLQuery {
  public static let operationString =
    "query GetAdvertisement($id: ID!) {\n  getAdvertisement(id: $id) {\n    __typename\n    id\n    category\n    videoName\n    adLink\n    duration\n    hasAudio\n    likes\n    views\n    shares\n    clicks\n    createdAt\n    updatedAt\n  }\n}"

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
      GraphQLField("getAdvertisement", arguments: ["id": GraphQLVariable("id")], type: .object(GetAdvertisement.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getAdvertisement: GetAdvertisement? = nil) {
      self.init(snapshot: ["__typename": "Query", "getAdvertisement": getAdvertisement.flatMap { $0.snapshot }])
    }

    public var getAdvertisement: GetAdvertisement? {
      get {
        return (snapshot["getAdvertisement"] as? Snapshot).flatMap { GetAdvertisement(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getAdvertisement")
      }
    }

    public struct GetAdvertisement: GraphQLSelectionSet {
      public static let possibleTypes = ["Advertisement"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("videoName", type: .nonNull(.scalar(String.self))),
        GraphQLField("adLink", type: .nonNull(.scalar(String.self))),
        GraphQLField("duration", type: .nonNull(.scalar(Double.self))),
        GraphQLField("hasAudio", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("likes", type: .nonNull(.scalar(Int.self))),
        GraphQLField("views", type: .nonNull(.scalar(Int.self))),
        GraphQLField("shares", type: .nonNull(.scalar(Int.self))),
        GraphQLField("clicks", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, category: String, videoName: String, adLink: String, duration: Double, hasAudio: Bool, likes: Int, views: Int, shares: Int, clicks: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Advertisement", "id": id, "category": category, "videoName": videoName, "adLink": adLink, "duration": duration, "hasAudio": hasAudio, "likes": likes, "views": views, "shares": shares, "clicks": clicks, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var videoName: String {
        get {
          return snapshot["videoName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "videoName")
        }
      }

      public var adLink: String {
        get {
          return snapshot["adLink"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adLink")
        }
      }

      public var duration: Double {
        get {
          return snapshot["duration"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "duration")
        }
      }

      public var hasAudio: Bool {
        get {
          return snapshot["hasAudio"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "hasAudio")
        }
      }

      public var likes: Int {
        get {
          return snapshot["likes"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "likes")
        }
      }

      public var views: Int {
        get {
          return snapshot["views"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "views")
        }
      }

      public var shares: Int {
        get {
          return snapshot["shares"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "shares")
        }
      }

      public var clicks: Int {
        get {
          return snapshot["clicks"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "clicks")
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

public final class ListAdvertisementsQuery: GraphQLQuery {
  public static let operationString =
    "query ListAdvertisements($filter: ModelAdvertisementFilterInput, $limit: Int, $nextToken: String) {\n  listAdvertisements(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      category\n      videoName\n      adLink\n      duration\n      hasAudio\n      likes\n      views\n      shares\n      clicks\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelAdvertisementFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelAdvertisementFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
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
      GraphQLField("listAdvertisements", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListAdvertisement.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listAdvertisements: ListAdvertisement? = nil) {
      self.init(snapshot: ["__typename": "Query", "listAdvertisements": listAdvertisements.flatMap { $0.snapshot }])
    }

    public var listAdvertisements: ListAdvertisement? {
      get {
        return (snapshot["listAdvertisements"] as? Snapshot).flatMap { ListAdvertisement(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listAdvertisements")
      }
    }

    public struct ListAdvertisement: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelAdvertisementConnection"]

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
        self.init(snapshot: ["__typename": "ModelAdvertisementConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
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
        public static let possibleTypes = ["Advertisement"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("category", type: .nonNull(.scalar(String.self))),
          GraphQLField("videoName", type: .nonNull(.scalar(String.self))),
          GraphQLField("adLink", type: .nonNull(.scalar(String.self))),
          GraphQLField("duration", type: .nonNull(.scalar(Double.self))),
          GraphQLField("hasAudio", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("likes", type: .nonNull(.scalar(Int.self))),
          GraphQLField("views", type: .nonNull(.scalar(Int.self))),
          GraphQLField("shares", type: .nonNull(.scalar(Int.self))),
          GraphQLField("clicks", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, category: String, videoName: String, adLink: String, duration: Double, hasAudio: Bool, likes: Int, views: Int, shares: Int, clicks: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Advertisement", "id": id, "category": category, "videoName": videoName, "adLink": adLink, "duration": duration, "hasAudio": hasAudio, "likes": likes, "views": views, "shares": shares, "clicks": clicks, "createdAt": createdAt, "updatedAt": updatedAt])
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

        public var category: String {
          get {
            return snapshot["category"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var videoName: String {
          get {
            return snapshot["videoName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "videoName")
          }
        }

        public var adLink: String {
          get {
            return snapshot["adLink"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "adLink")
          }
        }

        public var duration: Double {
          get {
            return snapshot["duration"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "duration")
          }
        }

        public var hasAudio: Bool {
          get {
            return snapshot["hasAudio"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "hasAudio")
          }
        }

        public var likes: Int {
          get {
            return snapshot["likes"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "likes")
          }
        }

        public var views: Int {
          get {
            return snapshot["views"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "views")
          }
        }

        public var shares: Int {
          get {
            return snapshot["shares"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "shares")
          }
        }

        public var clicks: Int {
          get {
            return snapshot["clicks"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "clicks")
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

public final class GetManagementDocumentQuery: GraphQLQuery {
  public static let operationString =
    "query GetManagementDocument($id: ID!) {\n  getManagementDocument(id: $id) {\n    __typename\n    id\n    documents\n    createdAt\n    updatedAt\n  }\n}"

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
      GraphQLField("getManagementDocument", arguments: ["id": GraphQLVariable("id")], type: .object(GetManagementDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getManagementDocument: GetManagementDocument? = nil) {
      self.init(snapshot: ["__typename": "Query", "getManagementDocument": getManagementDocument.flatMap { $0.snapshot }])
    }

    public var getManagementDocument: GetManagementDocument? {
      get {
        return (snapshot["getManagementDocument"] as? Snapshot).flatMap { GetManagementDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getManagementDocument")
      }
    }

    public struct GetManagementDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["ManagementDocument"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("documents", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, documents: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ManagementDocument", "id": id, "documents": documents, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var documents: [String?]? {
        get {
          return snapshot["documents"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "documents")
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

public final class ListManagementDocumentsQuery: GraphQLQuery {
  public static let operationString =
    "query ListManagementDocuments($filter: ModelManagementDocumentFilterInput, $limit: Int, $nextToken: String) {\n  listManagementDocuments(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      documents\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelManagementDocumentFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelManagementDocumentFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
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
      GraphQLField("listManagementDocuments", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListManagementDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listManagementDocuments: ListManagementDocument? = nil) {
      self.init(snapshot: ["__typename": "Query", "listManagementDocuments": listManagementDocuments.flatMap { $0.snapshot }])
    }

    public var listManagementDocuments: ListManagementDocument? {
      get {
        return (snapshot["listManagementDocuments"] as? Snapshot).flatMap { ListManagementDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listManagementDocuments")
      }
    }

    public struct ListManagementDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelManagementDocumentConnection"]

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
        self.init(snapshot: ["__typename": "ModelManagementDocumentConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
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
        public static let possibleTypes = ["ManagementDocument"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("documents", type: .list(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, documents: [String?]? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "ManagementDocument", "id": id, "documents": documents, "createdAt": createdAt, "updatedAt": updatedAt])
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

        public var documents: [String?]? {
          get {
            return snapshot["documents"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "documents")
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
    "subscription OnCreateRoom {\n  onCreateRoom {\n    __typename\n    id\n    name\n    members\n    messages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    blueMode\n    lastSeenByMember1\n    lastSeenByMember2\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("messages", type: .list(.nonNull(.object(Message.selections)))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("lastSeenByMember1", type: .scalar(Int.self)),
        GraphQLField("lastSeenByMember2", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, members: [String], messages: [Message]? = nil, blueMode: Bool, lastSeenByMember1: Int? = nil, lastSeenByMember2: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "name": name, "members": members, "messages": messages.flatMap { $0.map { $0.snapshot } }, "blueMode": blueMode, "lastSeenByMember1": lastSeenByMember1, "lastSeenByMember2": lastSeenByMember2, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var members: [String] {
        get {
          return snapshot["members"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "members")
        }
      }

      public var messages: [Message]? {
        get {
          return (snapshot["messages"] as? [Snapshot]).flatMap { $0.map { Message(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "messages")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
        }
      }

      public var lastSeenByMember1: Int? {
        get {
          return snapshot["lastSeenByMember1"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember1")
        }
      }

      public var lastSeenByMember2: Int? {
        get {
          return snapshot["lastSeenByMember2"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember2")
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

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class OnUpdateRoomSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateRoom {\n  onUpdateRoom {\n    __typename\n    id\n    name\n    members\n    messages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    blueMode\n    lastSeenByMember1\n    lastSeenByMember2\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("messages", type: .list(.nonNull(.object(Message.selections)))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("lastSeenByMember1", type: .scalar(Int.self)),
        GraphQLField("lastSeenByMember2", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, members: [String], messages: [Message]? = nil, blueMode: Bool, lastSeenByMember1: Int? = nil, lastSeenByMember2: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "name": name, "members": members, "messages": messages.flatMap { $0.map { $0.snapshot } }, "blueMode": blueMode, "lastSeenByMember1": lastSeenByMember1, "lastSeenByMember2": lastSeenByMember2, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var members: [String] {
        get {
          return snapshot["members"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "members")
        }
      }

      public var messages: [Message]? {
        get {
          return (snapshot["messages"] as? [Snapshot]).flatMap { $0.map { Message(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "messages")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
        }
      }

      public var lastSeenByMember1: Int? {
        get {
          return snapshot["lastSeenByMember1"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember1")
        }
      }

      public var lastSeenByMember2: Int? {
        get {
          return snapshot["lastSeenByMember2"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember2")
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

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class OnDeleteRoomSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteRoom {\n  onDeleteRoom {\n    __typename\n    id\n    name\n    members\n    messages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    blueMode\n    lastSeenByMember1\n    lastSeenByMember2\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("members", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("messages", type: .list(.nonNull(.object(Message.selections)))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("lastSeenByMember1", type: .scalar(Int.self)),
        GraphQLField("lastSeenByMember2", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, members: [String], messages: [Message]? = nil, blueMode: Bool, lastSeenByMember1: Int? = nil, lastSeenByMember2: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Room", "id": id, "name": name, "members": members, "messages": messages.flatMap { $0.map { $0.snapshot } }, "blueMode": blueMode, "lastSeenByMember1": lastSeenByMember1, "lastSeenByMember2": lastSeenByMember2, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var members: [String] {
        get {
          return snapshot["members"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "members")
        }
      }

      public var messages: [Message]? {
        get {
          return (snapshot["messages"] as? [Snapshot]).flatMap { $0.map { Message(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "messages")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
        }
      }

      public var lastSeenByMember1: Int? {
        get {
          return snapshot["lastSeenByMember1"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember1")
        }
      }

      public var lastSeenByMember2: Int? {
        get {
          return snapshot["lastSeenByMember2"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastSeenByMember2")
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

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class OnCreateReportedMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateReportedMessage {\n  onCreateReportedMessage {\n    __typename\n    id\n    reporterID\n    reportedMessage {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    previousMessages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateReportedMessage", type: .object(OnCreateReportedMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateReportedMessage: OnCreateReportedMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateReportedMessage": onCreateReportedMessage.flatMap { $0.snapshot }])
    }

    public var onCreateReportedMessage: OnCreateReportedMessage? {
      get {
        return (snapshot["onCreateReportedMessage"] as? Snapshot).flatMap { OnCreateReportedMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateReportedMessage")
      }
    }

    public struct OnCreateReportedMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["ReportedMessage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("reporterID", type: .nonNull(.scalar(String.self))),
        GraphQLField("reportedMessage", type: .nonNull(.object(ReportedMessage.selections))),
        GraphQLField("previousMessages", type: .list(.nonNull(.object(PreviousMessage.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, reporterId: String, reportedMessage: ReportedMessage, previousMessages: [PreviousMessage]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ReportedMessage", "id": id, "reporterID": reporterId, "reportedMessage": reportedMessage.snapshot, "previousMessages": previousMessages.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var reporterId: String {
        get {
          return snapshot["reporterID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reporterID")
        }
      }

      public var reportedMessage: ReportedMessage {
        get {
          return ReportedMessage(snapshot: snapshot["reportedMessage"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "reportedMessage")
        }
      }

      public var previousMessages: [PreviousMessage]? {
        get {
          return (snapshot["previousMessages"] as? [Snapshot]).flatMap { $0.map { PreviousMessage(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "previousMessages")
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

      public struct ReportedMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }

      public struct PreviousMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class OnUpdateReportedMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateReportedMessage {\n  onUpdateReportedMessage {\n    __typename\n    id\n    reporterID\n    reportedMessage {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    previousMessages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateReportedMessage", type: .object(OnUpdateReportedMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateReportedMessage: OnUpdateReportedMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateReportedMessage": onUpdateReportedMessage.flatMap { $0.snapshot }])
    }

    public var onUpdateReportedMessage: OnUpdateReportedMessage? {
      get {
        return (snapshot["onUpdateReportedMessage"] as? Snapshot).flatMap { OnUpdateReportedMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateReportedMessage")
      }
    }

    public struct OnUpdateReportedMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["ReportedMessage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("reporterID", type: .nonNull(.scalar(String.self))),
        GraphQLField("reportedMessage", type: .nonNull(.object(ReportedMessage.selections))),
        GraphQLField("previousMessages", type: .list(.nonNull(.object(PreviousMessage.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, reporterId: String, reportedMessage: ReportedMessage, previousMessages: [PreviousMessage]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ReportedMessage", "id": id, "reporterID": reporterId, "reportedMessage": reportedMessage.snapshot, "previousMessages": previousMessages.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var reporterId: String {
        get {
          return snapshot["reporterID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reporterID")
        }
      }

      public var reportedMessage: ReportedMessage {
        get {
          return ReportedMessage(snapshot: snapshot["reportedMessage"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "reportedMessage")
        }
      }

      public var previousMessages: [PreviousMessage]? {
        get {
          return (snapshot["previousMessages"] as? [Snapshot]).flatMap { $0.map { PreviousMessage(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "previousMessages")
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

      public struct ReportedMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }

      public struct PreviousMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class OnDeleteReportedMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteReportedMessage {\n  onDeleteReportedMessage {\n    __typename\n    id\n    reporterID\n    reportedMessage {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    previousMessages {\n      __typename\n      id\n      senderName\n      senderID\n      body\n      creationDate\n      attachmentPath\n      stickerNumber\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteReportedMessage", type: .object(OnDeleteReportedMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteReportedMessage: OnDeleteReportedMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteReportedMessage": onDeleteReportedMessage.flatMap { $0.snapshot }])
    }

    public var onDeleteReportedMessage: OnDeleteReportedMessage? {
      get {
        return (snapshot["onDeleteReportedMessage"] as? Snapshot).flatMap { OnDeleteReportedMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteReportedMessage")
      }
    }

    public struct OnDeleteReportedMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["ReportedMessage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("reporterID", type: .nonNull(.scalar(String.self))),
        GraphQLField("reportedMessage", type: .nonNull(.object(ReportedMessage.selections))),
        GraphQLField("previousMessages", type: .list(.nonNull(.object(PreviousMessage.selections)))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, reporterId: String, reportedMessage: ReportedMessage, previousMessages: [PreviousMessage]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ReportedMessage", "id": id, "reporterID": reporterId, "reportedMessage": reportedMessage.snapshot, "previousMessages": previousMessages.flatMap { $0.map { $0.snapshot } }, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var reporterId: String {
        get {
          return snapshot["reporterID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reporterID")
        }
      }

      public var reportedMessage: ReportedMessage {
        get {
          return ReportedMessage(snapshot: snapshot["reportedMessage"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "reportedMessage")
        }
      }

      public var previousMessages: [PreviousMessage]? {
        get {
          return (snapshot["previousMessages"] as? [Snapshot]).flatMap { $0.map { PreviousMessage(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "previousMessages")
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

      public struct ReportedMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }

      public struct PreviousMessage: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
          GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
          GraphQLField("body", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("attachmentPath", type: .scalar(String.self)),
          GraphQLField("stickerNumber", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

        public var attachmentPath: String? {
          get {
            return snapshot["attachmentPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attachmentPath")
          }
        }

        public var stickerNumber: Int? {
          get {
            return snapshot["stickerNumber"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "stickerNumber")
          }
        }
      }
    }
  }
}

public final class OnCreateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUser {\n  onCreateUser {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    deviceFCMToken\n    isOnline\n    secretPin\n    friends\n    rooms\n    hiddenRooms\n    smileNotes {\n      __typename\n      id\n      message {\n        __typename\n        id\n        senderName\n        senderID\n        body\n        creationDate\n        attachmentPath\n        stickerNumber\n      }\n      favorite\n    }\n    shakingCoolLinks\n    tokens\n    background\n    unlockedStickers\n    blueMode\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("deviceFCMToken", type: .nonNull(.scalar(String.self))),
        GraphQLField("isOnline", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("secretPin", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("hiddenRooms", type: .list(.scalar(String.self))),
        GraphQLField("smileNotes", type: .list(.object(SmileNote.selections))),
        GraphQLField("shakingCoolLinks", type: .list(.scalar(String.self))),
        GraphQLField("tokens", type: .nonNull(.scalar(Int.self))),
        GraphQLField("background", type: .nonNull(.scalar(Int.self))),
        GraphQLField("unlockedStickers", type: .list(.scalar(Int.self))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, deviceFcmToken: String, isOnline: Bool, secretPin: String, friends: [String?]? = nil, rooms: [String?]? = nil, hiddenRooms: [String?]? = nil, smileNotes: [SmileNote?]? = nil, shakingCoolLinks: [String?]? = nil, tokens: Int, background: Int, unlockedStickers: [Int?]? = nil, blueMode: Bool, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "deviceFCMToken": deviceFcmToken, "isOnline": isOnline, "secretPin": secretPin, "friends": friends, "rooms": rooms, "hiddenRooms": hiddenRooms, "smileNotes": smileNotes.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "shakingCoolLinks": shakingCoolLinks, "tokens": tokens, "background": background, "unlockedStickers": unlockedStickers, "blueMode": blueMode, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var deviceFcmToken: String {
        get {
          return snapshot["deviceFCMToken"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deviceFCMToken")
        }
      }

      public var isOnline: Bool {
        get {
          return snapshot["isOnline"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isOnline")
        }
      }

      public var secretPin: String {
        get {
          return snapshot["secretPin"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "secretPin")
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

      public var hiddenRooms: [String?]? {
        get {
          return snapshot["hiddenRooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "hiddenRooms")
        }
      }

      public var smileNotes: [SmileNote?]? {
        get {
          return (snapshot["smileNotes"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { SmileNote(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "smileNotes")
        }
      }

      public var shakingCoolLinks: [String?]? {
        get {
          return snapshot["shakingCoolLinks"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "shakingCoolLinks")
        }
      }

      public var tokens: Int {
        get {
          return snapshot["tokens"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "tokens")
        }
      }

      public var background: Int {
        get {
          return snapshot["background"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "background")
        }
      }

      public var unlockedStickers: [Int?]? {
        get {
          return snapshot["unlockedStickers"] as? [Int?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "unlockedStickers")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
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

      public struct SmileNote: GraphQLSelectionSet {
        public static let possibleTypes = ["SmileNote"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("message", type: .nonNull(.object(Message.selections))),
          GraphQLField("favorite", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, message: Message, favorite: Bool) {
          self.init(snapshot: ["__typename": "SmileNote", "id": id, "message": message.snapshot, "favorite": favorite])
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

        public var message: Message {
          get {
            return Message(snapshot: snapshot["message"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "message")
          }
        }

        public var favorite: Bool {
          get {
            return snapshot["favorite"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "favorite")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
            GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
            GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
            GraphQLField("attachmentPath", type: .scalar(String.self)),
            GraphQLField("stickerNumber", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

          public var attachmentPath: String? {
            get {
              return snapshot["attachmentPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "attachmentPath")
            }
          }

          public var stickerNumber: Int? {
            get {
              return snapshot["stickerNumber"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "stickerNumber")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUser {\n  onUpdateUser {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    deviceFCMToken\n    isOnline\n    secretPin\n    friends\n    rooms\n    hiddenRooms\n    smileNotes {\n      __typename\n      id\n      message {\n        __typename\n        id\n        senderName\n        senderID\n        body\n        creationDate\n        attachmentPath\n        stickerNumber\n      }\n      favorite\n    }\n    shakingCoolLinks\n    tokens\n    background\n    unlockedStickers\n    blueMode\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("deviceFCMToken", type: .nonNull(.scalar(String.self))),
        GraphQLField("isOnline", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("secretPin", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("hiddenRooms", type: .list(.scalar(String.self))),
        GraphQLField("smileNotes", type: .list(.object(SmileNote.selections))),
        GraphQLField("shakingCoolLinks", type: .list(.scalar(String.self))),
        GraphQLField("tokens", type: .nonNull(.scalar(Int.self))),
        GraphQLField("background", type: .nonNull(.scalar(Int.self))),
        GraphQLField("unlockedStickers", type: .list(.scalar(Int.self))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, deviceFcmToken: String, isOnline: Bool, secretPin: String, friends: [String?]? = nil, rooms: [String?]? = nil, hiddenRooms: [String?]? = nil, smileNotes: [SmileNote?]? = nil, shakingCoolLinks: [String?]? = nil, tokens: Int, background: Int, unlockedStickers: [Int?]? = nil, blueMode: Bool, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "deviceFCMToken": deviceFcmToken, "isOnline": isOnline, "secretPin": secretPin, "friends": friends, "rooms": rooms, "hiddenRooms": hiddenRooms, "smileNotes": smileNotes.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "shakingCoolLinks": shakingCoolLinks, "tokens": tokens, "background": background, "unlockedStickers": unlockedStickers, "blueMode": blueMode, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var deviceFcmToken: String {
        get {
          return snapshot["deviceFCMToken"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deviceFCMToken")
        }
      }

      public var isOnline: Bool {
        get {
          return snapshot["isOnline"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isOnline")
        }
      }

      public var secretPin: String {
        get {
          return snapshot["secretPin"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "secretPin")
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

      public var hiddenRooms: [String?]? {
        get {
          return snapshot["hiddenRooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "hiddenRooms")
        }
      }

      public var smileNotes: [SmileNote?]? {
        get {
          return (snapshot["smileNotes"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { SmileNote(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "smileNotes")
        }
      }

      public var shakingCoolLinks: [String?]? {
        get {
          return snapshot["shakingCoolLinks"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "shakingCoolLinks")
        }
      }

      public var tokens: Int {
        get {
          return snapshot["tokens"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "tokens")
        }
      }

      public var background: Int {
        get {
          return snapshot["background"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "background")
        }
      }

      public var unlockedStickers: [Int?]? {
        get {
          return snapshot["unlockedStickers"] as? [Int?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "unlockedStickers")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
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

      public struct SmileNote: GraphQLSelectionSet {
        public static let possibleTypes = ["SmileNote"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("message", type: .nonNull(.object(Message.selections))),
          GraphQLField("favorite", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, message: Message, favorite: Bool) {
          self.init(snapshot: ["__typename": "SmileNote", "id": id, "message": message.snapshot, "favorite": favorite])
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

        public var message: Message {
          get {
            return Message(snapshot: snapshot["message"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "message")
          }
        }

        public var favorite: Bool {
          get {
            return snapshot["favorite"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "favorite")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
            GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
            GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
            GraphQLField("attachmentPath", type: .scalar(String.self)),
            GraphQLField("stickerNumber", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

          public var attachmentPath: String? {
            get {
              return snapshot["attachmentPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "attachmentPath")
            }
          }

          public var stickerNumber: Int? {
            get {
              return snapshot["stickerNumber"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "stickerNumber")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUser {\n  onDeleteUser {\n    __typename\n    id\n    firstName\n    lastName\n    birthday\n    pronouns\n    location\n    adPreference\n    deviceFCMToken\n    isOnline\n    secretPin\n    friends\n    rooms\n    hiddenRooms\n    smileNotes {\n      __typename\n      id\n      message {\n        __typename\n        id\n        senderName\n        senderID\n        body\n        creationDate\n        attachmentPath\n        stickerNumber\n      }\n      favorite\n    }\n    shakingCoolLinks\n    tokens\n    background\n    unlockedStickers\n    blueMode\n    createdAt\n    updatedAt\n  }\n}"

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
        GraphQLField("deviceFCMToken", type: .nonNull(.scalar(String.self))),
        GraphQLField("isOnline", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("secretPin", type: .nonNull(.scalar(String.self))),
        GraphQLField("friends", type: .list(.scalar(String.self))),
        GraphQLField("rooms", type: .list(.scalar(String.self))),
        GraphQLField("hiddenRooms", type: .list(.scalar(String.self))),
        GraphQLField("smileNotes", type: .list(.object(SmileNote.selections))),
        GraphQLField("shakingCoolLinks", type: .list(.scalar(String.self))),
        GraphQLField("tokens", type: .nonNull(.scalar(Int.self))),
        GraphQLField("background", type: .nonNull(.scalar(Int.self))),
        GraphQLField("unlockedStickers", type: .list(.scalar(Int.self))),
        GraphQLField("blueMode", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, lastName: String, birthday: String, pronouns: String, location: String, adPreference: String, deviceFcmToken: String, isOnline: Bool, secretPin: String, friends: [String?]? = nil, rooms: [String?]? = nil, hiddenRooms: [String?]? = nil, smileNotes: [SmileNote?]? = nil, shakingCoolLinks: [String?]? = nil, tokens: Int, background: Int, unlockedStickers: [Int?]? = nil, blueMode: Bool, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "birthday": birthday, "pronouns": pronouns, "location": location, "adPreference": adPreference, "deviceFCMToken": deviceFcmToken, "isOnline": isOnline, "secretPin": secretPin, "friends": friends, "rooms": rooms, "hiddenRooms": hiddenRooms, "smileNotes": smileNotes.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "shakingCoolLinks": shakingCoolLinks, "tokens": tokens, "background": background, "unlockedStickers": unlockedStickers, "blueMode": blueMode, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var deviceFcmToken: String {
        get {
          return snapshot["deviceFCMToken"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deviceFCMToken")
        }
      }

      public var isOnline: Bool {
        get {
          return snapshot["isOnline"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isOnline")
        }
      }

      public var secretPin: String {
        get {
          return snapshot["secretPin"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "secretPin")
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

      public var hiddenRooms: [String?]? {
        get {
          return snapshot["hiddenRooms"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "hiddenRooms")
        }
      }

      public var smileNotes: [SmileNote?]? {
        get {
          return (snapshot["smileNotes"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { SmileNote(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "smileNotes")
        }
      }

      public var shakingCoolLinks: [String?]? {
        get {
          return snapshot["shakingCoolLinks"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "shakingCoolLinks")
        }
      }

      public var tokens: Int {
        get {
          return snapshot["tokens"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "tokens")
        }
      }

      public var background: Int {
        get {
          return snapshot["background"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "background")
        }
      }

      public var unlockedStickers: [Int?]? {
        get {
          return snapshot["unlockedStickers"] as? [Int?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "unlockedStickers")
        }
      }

      public var blueMode: Bool {
        get {
          return snapshot["blueMode"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "blueMode")
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

      public struct SmileNote: GraphQLSelectionSet {
        public static let possibleTypes = ["SmileNote"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("message", type: .nonNull(.object(Message.selections))),
          GraphQLField("favorite", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, message: Message, favorite: Bool) {
          self.init(snapshot: ["__typename": "SmileNote", "id": id, "message": message.snapshot, "favorite": favorite])
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

        public var message: Message {
          get {
            return Message(snapshot: snapshot["message"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "message")
          }
        }

        public var favorite: Bool {
          get {
            return snapshot["favorite"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "favorite")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("senderName", type: .nonNull(.scalar(String.self))),
            GraphQLField("senderID", type: .nonNull(.scalar(String.self))),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
            GraphQLField("creationDate", type: .nonNull(.scalar(Int.self))),
            GraphQLField("attachmentPath", type: .scalar(String.self)),
            GraphQLField("stickerNumber", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, senderName: String, senderId: String, body: String, creationDate: Int, attachmentPath: String? = nil, stickerNumber: Int? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "senderName": senderName, "senderID": senderId, "body": body, "creationDate": creationDate, "attachmentPath": attachmentPath, "stickerNumber": stickerNumber])
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

          public var attachmentPath: String? {
            get {
              return snapshot["attachmentPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "attachmentPath")
            }
          }

          public var stickerNumber: Int? {
            get {
              return snapshot["stickerNumber"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "stickerNumber")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateAdvertisementSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateAdvertisement {\n  onCreateAdvertisement {\n    __typename\n    id\n    category\n    videoName\n    adLink\n    duration\n    hasAudio\n    likes\n    views\n    shares\n    clicks\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateAdvertisement", type: .object(OnCreateAdvertisement.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateAdvertisement: OnCreateAdvertisement? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateAdvertisement": onCreateAdvertisement.flatMap { $0.snapshot }])
    }

    public var onCreateAdvertisement: OnCreateAdvertisement? {
      get {
        return (snapshot["onCreateAdvertisement"] as? Snapshot).flatMap { OnCreateAdvertisement(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateAdvertisement")
      }
    }

    public struct OnCreateAdvertisement: GraphQLSelectionSet {
      public static let possibleTypes = ["Advertisement"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("videoName", type: .nonNull(.scalar(String.self))),
        GraphQLField("adLink", type: .nonNull(.scalar(String.self))),
        GraphQLField("duration", type: .nonNull(.scalar(Double.self))),
        GraphQLField("hasAudio", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("likes", type: .nonNull(.scalar(Int.self))),
        GraphQLField("views", type: .nonNull(.scalar(Int.self))),
        GraphQLField("shares", type: .nonNull(.scalar(Int.self))),
        GraphQLField("clicks", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, category: String, videoName: String, adLink: String, duration: Double, hasAudio: Bool, likes: Int, views: Int, shares: Int, clicks: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Advertisement", "id": id, "category": category, "videoName": videoName, "adLink": adLink, "duration": duration, "hasAudio": hasAudio, "likes": likes, "views": views, "shares": shares, "clicks": clicks, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var videoName: String {
        get {
          return snapshot["videoName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "videoName")
        }
      }

      public var adLink: String {
        get {
          return snapshot["adLink"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adLink")
        }
      }

      public var duration: Double {
        get {
          return snapshot["duration"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "duration")
        }
      }

      public var hasAudio: Bool {
        get {
          return snapshot["hasAudio"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "hasAudio")
        }
      }

      public var likes: Int {
        get {
          return snapshot["likes"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "likes")
        }
      }

      public var views: Int {
        get {
          return snapshot["views"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "views")
        }
      }

      public var shares: Int {
        get {
          return snapshot["shares"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "shares")
        }
      }

      public var clicks: Int {
        get {
          return snapshot["clicks"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "clicks")
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

public final class OnUpdateAdvertisementSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateAdvertisement {\n  onUpdateAdvertisement {\n    __typename\n    id\n    category\n    videoName\n    adLink\n    duration\n    hasAudio\n    likes\n    views\n    shares\n    clicks\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateAdvertisement", type: .object(OnUpdateAdvertisement.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateAdvertisement: OnUpdateAdvertisement? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateAdvertisement": onUpdateAdvertisement.flatMap { $0.snapshot }])
    }

    public var onUpdateAdvertisement: OnUpdateAdvertisement? {
      get {
        return (snapshot["onUpdateAdvertisement"] as? Snapshot).flatMap { OnUpdateAdvertisement(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateAdvertisement")
      }
    }

    public struct OnUpdateAdvertisement: GraphQLSelectionSet {
      public static let possibleTypes = ["Advertisement"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("videoName", type: .nonNull(.scalar(String.self))),
        GraphQLField("adLink", type: .nonNull(.scalar(String.self))),
        GraphQLField("duration", type: .nonNull(.scalar(Double.self))),
        GraphQLField("hasAudio", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("likes", type: .nonNull(.scalar(Int.self))),
        GraphQLField("views", type: .nonNull(.scalar(Int.self))),
        GraphQLField("shares", type: .nonNull(.scalar(Int.self))),
        GraphQLField("clicks", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, category: String, videoName: String, adLink: String, duration: Double, hasAudio: Bool, likes: Int, views: Int, shares: Int, clicks: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Advertisement", "id": id, "category": category, "videoName": videoName, "adLink": adLink, "duration": duration, "hasAudio": hasAudio, "likes": likes, "views": views, "shares": shares, "clicks": clicks, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var videoName: String {
        get {
          return snapshot["videoName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "videoName")
        }
      }

      public var adLink: String {
        get {
          return snapshot["adLink"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adLink")
        }
      }

      public var duration: Double {
        get {
          return snapshot["duration"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "duration")
        }
      }

      public var hasAudio: Bool {
        get {
          return snapshot["hasAudio"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "hasAudio")
        }
      }

      public var likes: Int {
        get {
          return snapshot["likes"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "likes")
        }
      }

      public var views: Int {
        get {
          return snapshot["views"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "views")
        }
      }

      public var shares: Int {
        get {
          return snapshot["shares"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "shares")
        }
      }

      public var clicks: Int {
        get {
          return snapshot["clicks"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "clicks")
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

public final class OnDeleteAdvertisementSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteAdvertisement {\n  onDeleteAdvertisement {\n    __typename\n    id\n    category\n    videoName\n    adLink\n    duration\n    hasAudio\n    likes\n    views\n    shares\n    clicks\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteAdvertisement", type: .object(OnDeleteAdvertisement.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteAdvertisement: OnDeleteAdvertisement? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteAdvertisement": onDeleteAdvertisement.flatMap { $0.snapshot }])
    }

    public var onDeleteAdvertisement: OnDeleteAdvertisement? {
      get {
        return (snapshot["onDeleteAdvertisement"] as? Snapshot).flatMap { OnDeleteAdvertisement(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteAdvertisement")
      }
    }

    public struct OnDeleteAdvertisement: GraphQLSelectionSet {
      public static let possibleTypes = ["Advertisement"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("videoName", type: .nonNull(.scalar(String.self))),
        GraphQLField("adLink", type: .nonNull(.scalar(String.self))),
        GraphQLField("duration", type: .nonNull(.scalar(Double.self))),
        GraphQLField("hasAudio", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("likes", type: .nonNull(.scalar(Int.self))),
        GraphQLField("views", type: .nonNull(.scalar(Int.self))),
        GraphQLField("shares", type: .nonNull(.scalar(Int.self))),
        GraphQLField("clicks", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, category: String, videoName: String, adLink: String, duration: Double, hasAudio: Bool, likes: Int, views: Int, shares: Int, clicks: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Advertisement", "id": id, "category": category, "videoName": videoName, "adLink": adLink, "duration": duration, "hasAudio": hasAudio, "likes": likes, "views": views, "shares": shares, "clicks": clicks, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var videoName: String {
        get {
          return snapshot["videoName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "videoName")
        }
      }

      public var adLink: String {
        get {
          return snapshot["adLink"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "adLink")
        }
      }

      public var duration: Double {
        get {
          return snapshot["duration"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "duration")
        }
      }

      public var hasAudio: Bool {
        get {
          return snapshot["hasAudio"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "hasAudio")
        }
      }

      public var likes: Int {
        get {
          return snapshot["likes"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "likes")
        }
      }

      public var views: Int {
        get {
          return snapshot["views"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "views")
        }
      }

      public var shares: Int {
        get {
          return snapshot["shares"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "shares")
        }
      }

      public var clicks: Int {
        get {
          return snapshot["clicks"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "clicks")
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

public final class OnCreateManagementDocumentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateManagementDocument {\n  onCreateManagementDocument {\n    __typename\n    id\n    documents\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateManagementDocument", type: .object(OnCreateManagementDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateManagementDocument: OnCreateManagementDocument? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateManagementDocument": onCreateManagementDocument.flatMap { $0.snapshot }])
    }

    public var onCreateManagementDocument: OnCreateManagementDocument? {
      get {
        return (snapshot["onCreateManagementDocument"] as? Snapshot).flatMap { OnCreateManagementDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateManagementDocument")
      }
    }

    public struct OnCreateManagementDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["ManagementDocument"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("documents", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, documents: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ManagementDocument", "id": id, "documents": documents, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var documents: [String?]? {
        get {
          return snapshot["documents"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "documents")
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

public final class OnUpdateManagementDocumentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateManagementDocument {\n  onUpdateManagementDocument {\n    __typename\n    id\n    documents\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateManagementDocument", type: .object(OnUpdateManagementDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateManagementDocument: OnUpdateManagementDocument? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateManagementDocument": onUpdateManagementDocument.flatMap { $0.snapshot }])
    }

    public var onUpdateManagementDocument: OnUpdateManagementDocument? {
      get {
        return (snapshot["onUpdateManagementDocument"] as? Snapshot).flatMap { OnUpdateManagementDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateManagementDocument")
      }
    }

    public struct OnUpdateManagementDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["ManagementDocument"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("documents", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, documents: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ManagementDocument", "id": id, "documents": documents, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var documents: [String?]? {
        get {
          return snapshot["documents"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "documents")
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

public final class OnDeleteManagementDocumentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteManagementDocument {\n  onDeleteManagementDocument {\n    __typename\n    id\n    documents\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteManagementDocument", type: .object(OnDeleteManagementDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteManagementDocument: OnDeleteManagementDocument? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteManagementDocument": onDeleteManagementDocument.flatMap { $0.snapshot }])
    }

    public var onDeleteManagementDocument: OnDeleteManagementDocument? {
      get {
        return (snapshot["onDeleteManagementDocument"] as? Snapshot).flatMap { OnDeleteManagementDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteManagementDocument")
      }
    }

    public struct OnDeleteManagementDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["ManagementDocument"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("documents", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, documents: [String?]? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "ManagementDocument", "id": id, "documents": documents, "createdAt": createdAt, "updatedAt": updatedAt])
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

      public var documents: [String?]? {
        get {
          return snapshot["documents"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "documents")
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