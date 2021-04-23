// swiftlint:disable all
import Amplify
import Foundation

public struct Room: Model {
  public let id: String
  public var messages: [String]
  
  public init(id: String = UUID().uuidString,
      messages: [String] = []) {
      self.id = id
      self.messages = messages
  }
}