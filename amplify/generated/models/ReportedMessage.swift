// swiftlint:disable all
import Amplify
import Foundation

public struct ReportedMessage: Model {
  public let id: String
  public var reporterID: String
  public var reportedMessage: Message
  public var previousMessages: [Message]?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      reporterID: String,
      reportedMessage: Message,
      previousMessages: [Message]? = nil) {
    self.init(id: id,
      reporterID: reporterID,
      reportedMessage: reportedMessage,
      previousMessages: previousMessages,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      reporterID: String,
      reportedMessage: Message,
      previousMessages: [Message]? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.reporterID = reporterID
      self.reportedMessage = reportedMessage
      self.previousMessages = previousMessages
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}