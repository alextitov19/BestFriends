// swiftlint:disable all
import Amplify
import Foundation

public struct Message: Model {
  public let id: String
  public var senderName: String
  public var senderID: String
  public var body: String
  public var creationDate: Temporal.Date
  
  public init(id: String = UUID().uuidString,
      senderName: String,
      senderID: String,
      body: String,
      creationDate: Temporal.Date) {
      self.id = id
      self.senderName = senderName
      self.senderID = senderID
      self.body = body
      self.creationDate = creationDate
  }
}