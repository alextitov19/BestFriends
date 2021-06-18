// swiftlint:disable all
import Amplify
import Foundation

public struct Room: Model {
  public let id: String
  public var name: String
  public var members: [String]
  public var messages: [Message]
  public var blueMode: Bool
  public var lastSeenByMember1: Int?
  public var lastSeenByMember2: Int?
  
  public init(id: String = UUID().uuidString,
      name: String,
      members: [String] = [],
      messages: [Message] = [],
      blueMode: Bool,
      lastSeenByMember1: Int? = nil,
      lastSeenByMember2: Int? = nil) {
      self.id = id
      self.name = name
      self.members = members
      self.messages = messages
      self.blueMode = blueMode
      self.lastSeenByMember1 = lastSeenByMember1
      self.lastSeenByMember2 = lastSeenByMember2
  }
}