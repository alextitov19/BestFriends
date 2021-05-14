// swiftlint:disable all
import Amplify
import Foundation

public struct Notification: Model {
  public let id: String
  public var body: String
  public var deviceToken: String
  public var senderID: String
  public var senderName: String
  
  public init(id: String = UUID().uuidString,
      body: String,
      deviceToken: String,
      senderID: String,
      senderName: String) {
      self.id = id
      self.body = body
      self.deviceToken = deviceToken
      self.senderID = senderID
      self.senderName = senderName
  }
}