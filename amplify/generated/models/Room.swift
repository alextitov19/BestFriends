// swiftlint:disable all
import Amplify
import Foundation

public struct Room: Model {
  public let id: String
  public var messages: [Message]
  
  public init(id: String = UUID().uuidString,
      messages: [Message] = []) {
      self.id = id
      self.messages = messages
  }
}