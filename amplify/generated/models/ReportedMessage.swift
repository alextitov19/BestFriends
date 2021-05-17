// swiftlint:disable all
import Amplify
import Foundation

public struct ReportedMessage: Model {
  public let id: String
  public var message: Message
  
  public init(id: String = UUID().uuidString,
      message: Message) {
      self.id = id
      self.message = message
  }
}