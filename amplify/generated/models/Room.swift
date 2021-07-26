// swiftlint:disable all
import Amplify
import Foundation

public struct Room: Model {
  public let id: String
  public var name: String
  public var creatorID: String
  public var members: [String]
  public var messages: [Message]?
  public var timeUpdated: Int
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      name: String,
      creatorID: String,
      members: [String] = [],
      messages: [Message]? = nil,
      timeUpdated: Int) {
    self.init(id: id,
      name: name,
      creatorID: creatorID,
      members: members,
      messages: messages,
      timeUpdated: timeUpdated,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      name: String,
      creatorID: String,
      members: [String] = [],
      messages: [Message]? = nil,
      timeUpdated: Int,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.name = name
      self.creatorID = creatorID
      self.members = members
      self.messages = messages
      self.timeUpdated = timeUpdated
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}