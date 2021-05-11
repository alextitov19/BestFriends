// swiftlint:disable all
import Amplify
import Foundation

public struct Notification: Model {
  public let id: String
  public var targetID: String
  public var targetDevice: String
  public var senderID: String
  public var body: String
  
  public init(id: String = UUID().uuidString,
      targetID: String,
      targetDevice: String,
      senderID: String,
      body: String) {
      self.id = id
      self.targetID = targetID
      self.targetDevice = targetDevice
      self.senderID = senderID
      self.body = body
  }
}