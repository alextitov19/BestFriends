// swiftlint:disable all
import Amplify
import Foundation

public struct Room: Model {
  public let id: String
  public var name: String
  public var members: [String]
  public var messages: [Message]
  public var blueMode: Bool
  
  public init(id: String = UUID().uuidString,
      name: String,
      members: [String] = [],
      messages: [Message] = [],
      blueMode: Bool) {
      self.id = id
      self.name = name
      self.members = members
      self.messages = messages
      self.blueMode = blueMode
  }
}