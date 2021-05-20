// swiftlint:disable all
import Amplify
import Foundation

public struct ReportedMessage: Model {
  public let id: String
  public var reporterID: String
  public var reportedMessage: Message
  public var previousMessages: [Message]
  
  public init(id: String = UUID().uuidString,
      reporterID: String,
      reportedMessage: Message,
      previousMessages: [Message] = []) {
      self.id = id
      self.reporterID = reporterID
      self.reportedMessage = reportedMessage
      self.previousMessages = previousMessages
  }
}