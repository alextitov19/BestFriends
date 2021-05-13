// swiftlint:disable all
import Amplify
import Foundation

public struct Notification: Model {
  public let id: String
  public var body: String
  public var targetDeviceToken: String
  public var senderID: String
  public var senderName: String
  
  public init(id: String = UUID().uuidString,
      body: String,
      targetDeviceToken: String,
      senderID: String,
      senderName: String) {
      self.id = id
      self.body = body
      self.targetDeviceToken = targetDeviceToken
      self.senderID = senderID
      self.senderName = senderName
  }
}